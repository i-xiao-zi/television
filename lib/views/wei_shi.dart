import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class WeiShi extends StatefulWidget {
  const WeiShi({super.key});

  @override
  State<WeiShi> createState() => _WeiShiState();
}

class _WeiShiState extends State<WeiShi>  with SingleTickerProviderStateMixin{
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(() {
      if (kDebugMode) {
        print('当前 Tab 索引: ${_tabController.index}');
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  void _handleKeyEvent(RawKeyEvent event){
    if (kDebugMode) {
      print('=> Tab 索引: ${_tabController.index}/${_tabController.length}');
    }
    switch(event.logicalKey){
      case LogicalKeyboardKey.arrowRight:
        if(_tabController.index < _tabController.length -1){
          _tabController.animateTo(_tabController.index+1);
        }
        break;
      case LogicalKeyboardKey.arrowLeft:
        if(_tabController.index > 0) {
          _tabController.animateTo(_tabController.index-1);
        }
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 400,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TabBar(
                controller: _tabController,
                indicatorWeight: 4,
                tabs: const [
                  Tab(text: "央视频道"),
                  Tab(text: "地方卫视"),
                  Tab(text: "电影"),
                ],
              ),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: const [
                    Text('央视频道'),
                    Text('地方卫视'),
                    Text('电视剧'),
                  ],
                ),
              )
            ],
          ),
        ),
        Expanded(
          child: Container(),
        ),
      ],
    );
  }
}