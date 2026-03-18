
import 'dart:convert';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:crypto/crypto.dart';
import 'package:http/http.dart' as http;
import 'package:television/stores/tui_jian.dart';

class HeNan {
  late final String title = "河南卫视";
  late final String _referer = "https://static.hntv.tv/";
  late final String _origin = "https://static.hntv.tv";
  late final String _ua = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36";

  HeNan();

  Future<List<TabViewItem>> fetchChannel() async {
    final String timestamp = _timestamp();
    final sign = sha256.convert(utf8.encode("6ca114a836ac7d73$timestamp")).toString();
    final Uri url = Uri.parse("https://pubmod.hntv.tv/program/getAuth/live/class/program/11/");
    final Map<String, String> headers = {
      "Referer": _referer,
      "Origin": _origin,
      "Sign": sign,
      "Timestamp": timestamp,
      "User-Agent": _ua,
    };
    List<TabViewItem> items = [];
    final response = await http.get(url, headers: headers);
    if (response.statusCode == 200) {
      List<dynamic> jsonList = jsonDecode(response.body);
      List<HeNanChannel> channels = jsonList.map((json) => HeNanChannel.fromJson(json)).toList();
      channels.map((item) => Logger().t(item));
      for(var channel in channels) {
        HeNanProgram?  program = await fetchProgram(channel.cid);
        items.add(TabViewItem(channel.name, channel.videoStreams[0]));
      }
      // channels.map((item) async => await fetchProgram(item.cid));
    }
    return items;
  }

  Future<HeNanProgram?> fetchProgram(int cid) async {
    final String timestamp = _timestamp();
    final sign = sha256.convert(utf8.encode("6ca114a836ac7d73$timestamp")).toString();
    final Uri url = Uri.parse("https://pubmod.hntv.tv/program/getAuth/vod/originStream/program/$cid/$timestamp");
    final Map<String, String> headers = {
      "Referer": _referer,
      "Origin": _origin,
      "Sign": sign,
      "Timestamp": timestamp,
      "User-Agent": _ua,
    };
    final response = await http.get(url, headers: headers);
    if (response.statusCode == 200) {
      dynamic json = jsonDecode(response.body);
      return HeNanProgram.fromJson(json);
    }
    return null;
  }

  String _timestamp() {
    return (DateTime.now().millisecondsSinceEpoch/1e3).floor().toString();
  }
}

class HeNanChannel {
  final int updateId;
  final String image;
  final String hotline;
  final String fm; // 字段名 FM 在 Dart 中建议使用小写，通过 @JsonKey 映射
  final List<String> streams;
  final int isprograms;
  final String description;
  final String interact;
  final List<String> videoStreams;
  final String articleId;
  final String compereStr;
  final String name;
  final String logo;
  final String time;
  final String live;
  final int cid;

  HeNanChannel({
    required this.updateId,
    required this.image,
    required this.hotline,
    required this.fm,
    required this.streams,
    required this.isprograms,
    required this.description,
    required this.interact,
    required this.videoStreams,
    required this.articleId,
    required this.compereStr,
    required this.name,
    required this.logo,
    required this.time,
    required this.live,
    required this.cid,
  });

  factory HeNanChannel.fromJson(Map<String, dynamic> json) {
    return HeNanChannel(
      updateId: json['update_id'] as int,
      image: json['image'] as String,
      hotline: json['hotline'] as String,
      fm: json['FM'] as String, // 直接使用 'FM' 键
      streams: List<String>.from(json['streams'] as List),
      isprograms: json['isprograms'] as int,
      description: json['description'] as String,
      interact: json['interact'] as String,
      videoStreams: List<String>.from(json['video_streams'] as List),
      articleId: json['article_id'] as String,
      compereStr: json['compere_str'] as String,
      name: json['name'] as String,
      logo: json['logo'] as String,
      time: json['time'] as String,
      live: json['live'] as String,
      cid: json['cid'] as int,
    );
  }

}

class HeNanProgram {
  final int updateId;
  final String image;
  final String hotline;
  final List<String> streams;
  final String name;
  final int isprograms;
  final String description;
  final String time;
  final List<HeNanProgramItem> programs;
  final List<String> videoStreams;
  final String live;
  final int cid;

  HeNanProgram({
    required this.updateId,
    required this.image,
    required this.hotline,
    required this.streams,
    required this.name,
    required this.isprograms,
    required this.description,
    required this.time,
    required this.programs,
    required this.videoStreams,
    required this.live,
    required this.cid,
  });

  factory HeNanProgram.fromJson(Map<String, dynamic> json) {
    return HeNanProgram(
      updateId: json['update_id'] as int? ?? 0,
      image: json['image'] as String? ?? '',
      hotline: json['hotline'] as String? ?? '',
      streams: (json['streams'] as List?)?.map((e) => e as String).toList() ?? [],
      name: json['name'] as String? ?? '',
      isprograms: json['isprograms'] as int? ?? 0,
      description: json['description'] as String? ?? '',
      time: json['time'] as String? ?? '',
      programs: (json['programs'] as List?)?.map((e) => HeNanProgramItem.fromJson(e as Map<String, dynamic>)).toList() ?? [],
      videoStreams: (json['video_streams'] as List?)?.map((e) => e as String).toList() ?? [],
      live: json['live'] as String? ?? '',
      cid: json['cid'] as int? ?? 0,
    );
  }
}

class HeNanProgramItem {
  final String signa;
  final List<String>? downloadUrl;
  final String beginTime;
  final String endTime;
  final String title;
  final List<String>? playUrl;

  HeNanProgramItem({
    required this.signa,
    this.downloadUrl,
    required this.beginTime,
    required this.endTime,
    required this.title,
    this.playUrl,
  });

  factory HeNanProgramItem.fromJson(Map<String, dynamic> json) {
    return HeNanProgramItem(
      signa: json['signa'] as String? ?? '',
      downloadUrl: (json['downloadUrl'] as List?)?.map((e) => e as String).toList(),
      beginTime: json['beginTime'] as String? ?? '',
      endTime: json['endTime'] as String? ?? '',
      title: json['title'] as String? ?? '',
      playUrl: (json['playUrl'] as List?)?.map((e) => e as String).toList(),
    );
  }
}