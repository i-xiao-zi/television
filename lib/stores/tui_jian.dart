
import 'dart:convert';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';
import 'package:crypto/crypto.dart';
import 'package:television/utils/he_nan.dart';
import 'package:television/utils/yang_shi.dart';

import '../proto/yang_shi.channel.pb.dart' as $channel;
import '../utils/he_bei.dart';


class TabItem {
  TabItem(this.bar, this.view);
  final String bar;
  final List<TabViewItem> view;
  Map<String, dynamic> toJson() => {
    'bar': bar,
    'view': view.map((item) => item.toJson()).toList(),
  };
}
class TabViewItem {
  TabViewItem(this.title, this.url, {this.programs});
  final String title;
  final String url;
  final List<String>? programs;
  Map<String, dynamic> toJson() => {
    'title': title,
    'url': url,
  };
}

class TuiJianModel with ChangeNotifier {

  TuiJianModel(){
    _loadDefault();
    _loadHenan();
    _loadHebei();
  }

  late Map<String, TabItem> items = {};
  String? currentTabKey;
  int? currentViewIndex;

  Future<void> _loadDefault() async {
    // final yangshi = YangShi();
    // await yangshi.fetchChannel();
    // Logger().t(await yangshi.fetchAuth("600001859"));
    // Logger().t(await yangshi.fetchToken());
  }

  void setCurrentTabKey(String key){
    currentTabKey = key;
  }
  void setCurrentViewIndex(int index) {
    currentViewIndex = index;
  }

  // 河南
  Future<void> _loadHenan() async {
    final henan = HeNan();
    List<TabViewItem> view = await henan.fetchChannel();
    if(view.isNotEmpty){
      items['henan'] = TabItem(henan.title, view);
      notifyListeners();
    }
  }

  // 河北
  Future<void> _loadHebei() async {
    final hebei = HeBei();
    List<TabViewItem> view = await hebei.fetchChannel();
    if(view.isNotEmpty){
      items['hebei'] = TabItem(hebei.title, view);
      notifyListeners();
    }
  }

}