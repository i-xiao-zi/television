
import 'package:flutter/cupertino.dart';

class TabItem {
  final Widget bar;
  final Widget view;
  TabItem(this.bar, this.view);
}

class TabsModel with ChangeNotifier {
  TabsModel(){
    _loadInitialData();
  }
  late List<String> items = [];

  Future<void> _loadInitialData() async {
    items = ['推荐', '电视剧','电影','哔哩哔哩'];
  }
}