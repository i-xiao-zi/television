
import 'dart:convert';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:crypto/crypto.dart';
import 'package:http/http.dart' as http;
import 'package:television/stores/tui_jian.dart';

class HeBei {
  late final String title = "河北卫视";
  late final String _referer = "https://static.hntv.tv/";
  late final String _origin = "https://static.hntv.tv";
  late final String _ua = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36";

  HeBei();

  Future<List<TabViewItem>> fetchChannel() async {
    final Uri url = Uri.parse("https://api.cmc.hebtv.com/scms/api/com/article/getArticleList?catalogId=32557&siteId=1");
    final Map<String, String> headers = {
      "Referer": _referer,
      "Origin": _origin,
      "User-Agent": _ua,
    };
    List<TabViewItem> items = [];
    final response = await http.get(url, headers: headers);
    if (response.statusCode == 200) {
      Map<String, dynamic> json = jsonDecode(response.body);
      final root = Root.fromJson(json);
      for(var item in root.returnData!.news!){
        final String url = _genUrl(item.liveVideo![0].formats![0].url!,
          item.appCustomParams!.movie!.liveUri!,
          item.appCustomParams!.movie!.liveKey!,
        );
        items.add(TabViewItem(item.title!, url));
        Logger().t(TabViewItem(item.title!, url).toJson());
      }
      // channels.map((item) async => await fetchProgram(item.cid));
    }
    return items;
  }
  
  String _genUrl(String baseUrl, String uri,String key){
    final int timestamp = ((DateTime.now().millisecondsSinceEpoch/1e3) + 7200).floor();
    final String secret = md5.convert(utf8.encode("$uri$key$timestamp")).toString();
    return "$baseUrl?t=$timestamp&k=$secret";
  }
  String _timestamp() {
    return (DateTime.now().millisecondsSinceEpoch/1e3).floor().toString();
  }
}

// 建议将以下代码保存为 models.dart

class Root {
  String? returnCode;
  ReturnData? returnData;
  String? returnDesc;
  bool? success;

  Root({
    this.returnCode,
    this.returnData,
    this.returnDesc,
    this.success,
  });

  factory Root.fromJson(Map<String, dynamic> json) => Root(
    returnCode: json['returnCode'] as String?,
    returnData: json['returnData'] == null ? null : ReturnData.fromJson(json['returnData'] as Map<String, dynamic>),
    returnDesc: json['returnDesc'] as String?,
    success: json['success'] as bool?,
  );

}

class ReturnData {
  List<NewsItem>? news;
  String? total;
  String? pages;
  String? pageSize;
  List<dynamic>? banner;
  String? page;

  ReturnData({
    this.news,
    this.total,
    this.pages,
    this.pageSize,
    this.banner,
    this.page,
  });

  factory ReturnData.fromJson(Map<String, dynamic> json) => ReturnData(
    news: (json['news'] as List<dynamic>?)
        ?.map((e) => NewsItem.fromJson(e as Map<String, dynamic>))
        .toList(),
    total: json['total'] as String?,
    pages: json['pages'] as String?,
    pageSize: json['pageSize'] as String?,
    banner: json['banner'] as List<dynamic>?,
    page: json['page'] as String?,
  );
}

class NewsItem {
  PraiseInfo? praiseInfo;
  String? catalogInnerCode;
  int? hitCount;
  String? redirectUrl;
  String? addTime;
  List<dynamic>? classifyId;
  String? addUser;
  String? publishDate;
  List<dynamic>? specialRecommendArticleList;
  int? referType;
  String? videoId;
  String? shortTitle;
  String? type;
  String? secondType;
  int? shareCount;
  String? modifyTime;
  String? subTitle;
  int? audioCount;
  SubscripInfo? subscripInfo;
  String? liveUrl;
  String? originalPublishDate;
  String? logo;
  int? id;
  int? resuourceId;
  String? keyword;
  String? publishCatalogs;
  String? advertisementFlag;
  String? textFlag;
  List<dynamic>? vrUrl;
  List<dynamic>? image;
  int? liveVideoCount;
  int? virtualHitCount;
  AppCustomParams? appCustomParams;
  String? author;
  String? workflowUser;
  int? commentCount;
  String? commentFlag;
  String? h5Url;
  int? workFlowId;
  List<dynamic>? liveAudio;
  String? poster;
  int? status;
  int? auditId;
  List<dynamic>? specialArticleList;
  int? followCount;
  int? praiseCount;
  int? liveActivityCount;
  String? description;
  List<dynamic>? video;
  String? title;
  int? favorCount;
  List<LiveVideo>? liveVideo;
  String? adDownload;
  int? videoCount;
  int? duration;
  int? catalogId;
  String? isOpenVirtualHitCount;
  String? refername;
  String? ireporter;
  dynamic? workFlowStatus; // 类型未知，使用 dynamic
  AppCustomParams? appCustomParams1;
  String? vrType;
  String? favorTag;
  String? introduction;
  String? summary;
  String? referTarget;
  int? articleId;
  int? isVideo;
  List<dynamic>? label;
  int? authorId;
  dynamic? prop4; // 类型未知，使用 dynamic
  String? url;
  String? specialLogo;
  String? linkType;

  NewsItem({
    this.praiseInfo,
    this.catalogInnerCode,
    this.hitCount,
    this.redirectUrl,
    this.addTime,
    this.classifyId,
    this.addUser,
    this.publishDate,
    this.specialRecommendArticleList,
    this.referType,
    this.videoId,
    this.shortTitle,
    this.type,
    this.secondType,
    this.shareCount,
    this.modifyTime,
    this.subTitle,
    this.audioCount,
    this.subscripInfo,
    this.liveUrl,
    this.originalPublishDate,
    this.logo,
    this.id,
    this.resuourceId,
    this.keyword,
    this.publishCatalogs,
    this.advertisementFlag,
    this.textFlag,
    this.vrUrl,
    this.image,
    this.liveVideoCount,
    this.virtualHitCount,
    this.appCustomParams,
    this.author,
    this.workflowUser,
    this.commentCount,
    this.commentFlag,
    this.h5Url,
    this.workFlowId,
    this.liveAudio,
    this.poster,
    this.status,
    this.auditId,
    this.specialArticleList,
    this.followCount,
    this.praiseCount,
    this.liveActivityCount,
    this.description,
    this.video,
    this.title,
    this.favorCount,
    this.liveVideo,
    this.adDownload,
    this.videoCount,
    this.duration,
    this.catalogId,
    this.isOpenVirtualHitCount,
    this.refername,
    this.ireporter,
    this.workFlowStatus,
    this.appCustomParams1,
    this.vrType,
    this.favorTag,
    this.introduction,
    this.summary,
    this.referTarget,
    this.articleId,
    this.isVideo,
    this.label,
    this.authorId,
    this.prop4,
    this.url,
    this.specialLogo,
    this.linkType,
  });

  factory NewsItem.fromJson(Map<String, dynamic> json) => NewsItem(
    praiseInfo: json['praiseInfo'] == null
        ? null
        : PraiseInfo.fromJson(json['praiseInfo'] as Map<String, dynamic>),
    catalogInnerCode: json['catalogInnerCode'] as String?,
    hitCount: json['hitCount'] as int?,
    redirectUrl: json['redirectUrl'] as String?,
    addTime: json['addTime'] as String?,
    classifyId: json['classifyId'] as List<dynamic>?,
    addUser: json['addUser'] as String?,
    publishDate: json['publishDate'] as String?,
    specialRecommendArticleList:
    json['specialRecommendArticleList'] as List<dynamic>?,
    referType: json['referType'] as int?,
    videoId: json['videoId'] as String?,
    shortTitle: json['shortTitle'] as String?,
    type: json['type'] as String?,
    secondType: json['secondType'] as String?,
    shareCount: json['shareCount'] as int?,
    modifyTime: json['modifyTime'] as String?,
    subTitle: json['subTitle'] as String?,
    audioCount: json['audioCount'] as int?,
    subscripInfo: json['subscripInfo'] == null
        ? null
        : SubscripInfo.fromJson(
        json['subscripInfo'] as Map<String, dynamic>),
    liveUrl: json['liveUrl'] as String?,
    originalPublishDate: json['originalPublishDate'] as String?,
    logo: json['logo'] as String?,
    id: json['id'] as int?,
    resuourceId: json['resuourceId'] as int?,
    keyword: json['keyword'] as String?,
    publishCatalogs: json['publishCatalogs'] as String?,
    advertisementFlag: json['advertisementFlag'] as String?,
    textFlag: json['textFlag'] as String?,
    vrUrl: json['vrUrl'] as List<dynamic>?,
    image: json['image'] as List<dynamic>?,
    liveVideoCount: json['liveVideoCount'] as int?,
    virtualHitCount: json['virtualHitCount'] as int?,
    appCustomParams: json['appCustomParams'] == null
        ? null
        : AppCustomParams.fromJson(
        json['appCustomParams'] as Map<String, dynamic>),
    author: json['author'] as String?,
    workflowUser: json['workflowUser'] as String?,
    commentCount: json['commentCount'] as int?,
    commentFlag: json['commentFlag'] as String?,
    h5Url: json['h5Url'] as String?,
    workFlowId: json['workFlowId'] as int?,
    liveAudio: json['liveAudio'] as List<dynamic>?,
    poster: json['poster'] as String?,
    status: json['status'] as int?,
    auditId: json['auditId'] as int?,
    specialArticleList: json['specialArticleList'] as List<dynamic>?,
    followCount: json['followCount'] as int?,
    praiseCount: json['praiseCount'] as int?,
    liveActivityCount: json['liveActivityCount'] as int?,
    description: json['description'] as String?,
    video: json['video'] as List<dynamic>?,
    title: json['title'] as String?,
    favorCount: json['favorCount'] as int?,
    liveVideo: (json['liveVideo'] as List<dynamic>?)
        ?.map((e) => LiveVideo.fromJson(e as Map<String, dynamic>))
        .toList(),
    adDownload: json['adDownload'] as String?,
    videoCount: json['videoCount'] as int?,
    duration: json['duration'] as int?,
    catalogId: json['catalogId'] as int?,
    isOpenVirtualHitCount: json['isOpenVirtualHitCount'] as String?,
    refername: json['refername'] as String?,
    ireporter: json['ireporter'] as String?,
    workFlowStatus: json['workFlowStatus'],
    appCustomParams1: json['appCustomParams1'] == null
        ? null
        : AppCustomParams.fromJson(
        json['appCustomParams1'] as Map<String, dynamic>),
    vrType: json['vrType'] as String?,
    favorTag: json['favorTag'] as String?,
    introduction: json['introduction'] as String?,
    summary: json['summary'] as String?,
    referTarget: json['referTarget'] as String?,
    articleId: json['articleId'] as int?,
    isVideo: json['isVideo'] as int?,
    label: json['label'] as List<dynamic>?,
    authorId: json['authorId'] as int?,
    prop4: json['prop4'],
    url: json['url'] as String?,
    specialLogo: json['specialLogo'] as String?,
    linkType: json['linkType'] as String?,
  );

}

class PraiseInfo {
  String? flag;
  String? id;

  PraiseInfo({this.flag, this.id});

  factory PraiseInfo.fromJson(Map<String, dynamic> json) => PraiseInfo(
    flag: json['flag'] as String?,
    id: json['id'] as String?,
  );

  Map<String, dynamic> toJson() => {
    'flag': flag,
    'id': id,
  };
}

class SubscripInfo {
  String? flag;
  String? id;

  SubscripInfo({this.flag, this.id});

  factory SubscripInfo.fromJson(Map<String, dynamic> json) => SubscripInfo(
    flag: json['flag'] as String?,
    id: json['id'] as String?,
  );

  Map<String, dynamic> toJson() => {
    'flag': flag,
    'id': id,
  };
}

class AppCustomParams {
  CustomStyle? customStyle;
  Movie? movie;
  String? keyPromotion;
  String? useNewPublishDate;
  String? submitForReview;

  AppCustomParams({
    this.customStyle,
    this.movie,
    this.keyPromotion,
    this.useNewPublishDate,
    this.submitForReview,
  });

  factory AppCustomParams.fromJson(Map<String, dynamic> json) =>
      AppCustomParams(
        customStyle: json['customStyle'] == null
            ? null
            : CustomStyle.fromJson(json['customStyle'] as Map<String, dynamic>),
        movie: json['movie'] == null
            ? null
            : Movie.fromJson(json['movie'] as Map<String, dynamic>),
        keyPromotion: json['keyPromotion'] as String?,
        useNewPublishDate: json['use_new_publish_date'] as String?,
        submitForReview: json['submitForReview'] as String?,
      );
}

class CustomStyle {
  List<String>? imgPath;
  String? type;

  CustomStyle({this.imgPath, this.type});

  factory CustomStyle.fromJson(Map<String, dynamic> json) => CustomStyle(
    imgPath: (json['imgPath'] as List<dynamic>?)
        ?.map((e) => e as String)
        .toList(),
    type: json['type'] as String?,
  );
}

class Movie {
  String? keyPromotion;
  String? articleDuration;
  String? editorNote;
  String? liveKey;
  String? emergency;
  String? liveID;
  String? schedulePlatform0;
  String? shareThumbnail;
  int? wordNumber;
  String? shareTitle;
  String? appCustomParams;
  String? articleCategory;
  String? contactNumber;
  String? shareUrl;
  String? liveUri;
  String? department;
  String? favorTag;
  String? articleCategoryOther;

  Movie({
    this.keyPromotion,
    this.articleDuration,
    this.editorNote,
    this.liveKey,
    this.emergency,
    this.liveID,
    this.schedulePlatform0,
    this.shareThumbnail,
    this.wordNumber,
    this.shareTitle,
    this.appCustomParams,
    this.articleCategory,
    this.contactNumber,
    this.shareUrl,
    this.liveUri,
    this.department,
    this.favorTag,
    this.articleCategoryOther,
  });

  factory Movie.fromJson(Map<String, dynamic> json) => Movie(
    keyPromotion: json['keyPromotion'] as String?,
    articleDuration: json['articleDuration'] as String?,
    editorNote: json['editorNote'] as String?,
    liveKey: json['liveKey'] as String?,
    emergency: json['emergency'] as String?,
    liveID: json['liveID'] as String?,
    schedulePlatform0: json['schedulePlatform_0'] as String?,
    shareThumbnail: json['shareThumbnail'] as String?,
    wordNumber: json['wordNumber'] as int?,
    shareTitle: json['shareTitle'] as String?,
    appCustomParams: json['AppCustomParams'] as String?,
    articleCategory: json['articleCategory'] as String?,
    contactNumber: json['contactNumber'] as String?,
    shareUrl: json['shareUrl'] as String?,
    liveUri: json['liveUri'] as String?,
    department: json['department'] as String?,
    favorTag: json['favorTag'] as String?,
    articleCategoryOther: json['articleCategoryOther'] as String?,
  );
}

class LiveVideo {
  List<Format>? formats;
  String? type;
  String? poster;
  String? liveSourceType;

  LiveVideo({this.formats, this.type, this.poster, this.liveSourceType});

  factory LiveVideo.fromJson(Map<String, dynamic> json) => LiveVideo(
    formats: (json['formats'] as List<dynamic>?)
        ?.map((e) => Format.fromJson(e as Map<String, dynamic>))
        .toList(),
    type: json['type'] as String?,
    poster: json['poster'] as String?,
    liveSourceType: json['liveSourceType'] as String?,
  );
}

class Format {
  int? streamSource;
  String? liveStream;
  String? title;
  String? fileTypeId;
  String? url;
  String? liveSourceType;

  Format({
    this.streamSource,
    this.liveStream,
    this.title,
    this.fileTypeId,
    this.url,
    this.liveSourceType,
  });

  factory Format.fromJson(Map<String, dynamic> json) => Format(
    streamSource: json['streamSource'] as int?,
    liveStream: json['liveStream'] as String?,
    title: json['title'] as String?,
    fileTypeId: json['fileTypeId'] as String?,
    url: json['url'] as String?,
    liveSourceType: json['liveSourceType'] as String?,
  );
}