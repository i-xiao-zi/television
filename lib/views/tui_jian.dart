import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:logger/logger.dart';
import 'package:provider/provider.dart';
import 'package:television/stores/tui_jian.dart';
import 'package:television/views/tui_jian_player.dart';
import 'package:television/views/tui_jian_player_control.dart';
import 'package:video_player/video_player.dart';

import '../router.dart';

class TuiJian extends StatefulWidget {
  const TuiJian({super.key});

  @override
  State<TuiJian> createState() => _TuiJianState();
}

class _TuiJianState extends State<TuiJian> with TickerProviderStateMixin, RouteAware  {
  late final TuiJianModel _tuiJianModel = Provider.of<TuiJianModel>(context, listen: true);
  TabViewItem? _current;
  TabController? _tabController;
  VideoPlayerController? _videoController;
  ChewieController? _chewieController;
  String? _activeTab;
  TabViewItem? _activeItem;
  final FocusScopeNode _node = FocusScopeNode();

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    routeObserver.subscribe(this, ModalRoute.of(context)!);
    _tabController?.dispose();
    _tabController = TabController(length: _tuiJianModel.items.length, vsync: this);
    Logger().d({"didChangeDependencies: ": _tuiJianModel.items.length});
    if (_tuiJianModel.items.isNotEmpty) {
      setState(() {
        _activeTab = _tuiJianModel.items.keys.first;
        _activeItem = _tuiJianModel.items[_activeTab]?.view.first;
        _node.requestFocus();
      });
    }
  }

  // @override
  // void didUpdateWidget(covariant TuiJian oldWidget) {
  //   super.didUpdateWidget(oldWidget);
  //   _tabController?.dispose();
  //   _tabController = TabController(length: _tuiJianModel.items.length, vsync: this);
  //   Logger().d({"didUpdateWidget: ": _tuiJianModel.items.length});
  // }

  @override
  void dispose() {
    super.dispose();
    routeObserver.unsubscribe(this);
    _tabController?.dispose();
    _videoController?.dispose();
    _chewieController?.dispose();
  }

  @override
  void didPush() {
    _chewieController?.pause();
    Logger().d('didPush');
  }

  @override
  void didPushNext() {
    _chewieController?.play();
    Logger().d('didPushNext');
  }

  @override
  void didPop() {
    Logger().d('didPop');
  }

  @override
  void didPopNext() {
    Logger().d('didPopNext');
  }

  void _itemFocus(TabViewItem item) {
    setState(() {
      _current = item;
      if(_chewieController == null) {
        _videoController = VideoPlayerController.networkUrl(Uri.parse(item.url));
        _chewieController = ChewieController(
            videoPlayerController: _videoController!,
            aspectRatio: 16 / 9,
            autoPlay: true,
            allowFullScreen: false,
            showControls: false,
        );
      } else {
        VideoPlayerController newVideoController = VideoPlayerController.networkUrl(Uri.parse(item.url));
        newVideoController.initialize().then((_){
          if (mounted) {
            setState(() {
              newVideoController.play();
              _videoController?.dispose();
              _videoController = newVideoController;
              _chewieController = _chewieController!.copyWith(videoPlayerController: _videoController);
            });
          }
        });
      }
    });
  }

  void _itemSelect(TabViewItem item) {
    context.push('/tui_jian/player', extra: item);
  }

  KeyEventResult _handleKeyEvent(FocusNode node,KeyEvent event){
    if (event is KeyUpEvent) {
      Logger().d(event.logicalKey);
      Logger().d("hasFocus: ${_node.hasFocus}, focusedChild: ${_node.focusedChild}");
      switch(event.logicalKey) {
        case LogicalKeyboardKey.goBack:
          context.pop();
          break;
        case LogicalKeyboardKey.arrowUp:
          _node.focusedChild?.previousFocus();
          break;
        case LogicalKeyboardKey.arrowDown:
          if (_node.focusedChild == null) {
            _node.children.first.requestFocus();
          } else if (_node.focusedChild != _node.children.last) {
            _node.focusedChild?.nextFocus();
          }
          break;
        case LogicalKeyboardKey.select:
          Logger().t(_activeItem?.title);
          _itemSelect(_activeItem!);
          break;
        default:
          return KeyEventResult.handled;
      }
    }
    return KeyEventResult.handled;
  }

  @override
  Widget build(BuildContext context) {
    return FocusScope(
      node: _node,
      onKeyEvent: _handleKeyEvent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 300,
            child: Column(
              children: [
                TabBar(
                  controller: _tabController,
                  indicatorWeight: 4,
                  onFocusChange: (_, index){
                    _tabController?.animateTo(index);
                    _tuiJianModel.setCurrentTabKey(_tuiJianModel.items.keys.toList()[index]);
                  },
                  tabs: _tuiJianModel.items.keys.map((key) => Tab(text: _tuiJianModel.items[key]!.bar,)).toList(),
                ),
                Expanded(
                  child: TabBarView(
                    controller: _tabController,
                    children: _tuiJianModel.items.keys.map((key) => ListView.builder(
                      itemCount: _tuiJianModel.items[key]!.view.length,
                      itemBuilder: (BuildContext context, int index) {
                        final item = _tuiJianModel.items[key]!.view[index];
                        return ListTile(
                          onTap: () => _itemSelect(item),
                          onFocusChange: (focus){
                              if(focus) {
                                _itemFocus(item);
                                _tuiJianModel.setCurrentViewIndex(index);
                                setState(() {
                                  _activeItem = item;
                                });
                              }
                            },
                          title: Text(item.title),
                        );
                      },
                    )).toList()
                  )
                )
              ],
            ),
          ),
          Expanded(
            child: _current != null ? Chewie(controller: _chewieController!) : Container(),
          ),
        ],
      ),
    );
  }
}