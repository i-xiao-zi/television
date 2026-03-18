import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import 'package:television/stores/tabs.dart';
import './bi_li.dart';
import './dian_shi.dart';
import './dian_ying.dart';
import './tui_jian.dart';
import 'wei_shi.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  late TabsModel tabsModel = Provider.of<TabsModel>(context);
  TabController? _tabController;
  final FocusNode _focusNode = FocusNode();
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _focusNode.requestFocus();
    });
  }
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (_tabController != null) {
      _tabController?.dispose();
    }
    _tabController = TabController(length: tabsModel.items.length, vsync: this);
  }
  @override
  void dispose() {
    _tabController?.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TabBar(
          controller: _tabController,
          indicatorWeight: 4,
          onFocusChange: (_, index) => _tabController?.animateTo(index),
          tabs: tabsModel.items.map((item) => Tab(text: item)).toList(),
        ),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: tabsModel.items.map<Widget>((item){
              switch(item){
                case "推荐": return TuiJian();
                case "电视": return DianShi();
                case "电影": return DianYing();
                case "哔哩哔哩": return BiLi();
                default: return SizedBox.shrink();
              }}).toList(),
          ),
        )

      ],
    );
  }
}