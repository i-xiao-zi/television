import 'dart:async';

import 'package:chewie/chewie.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:logger/logger.dart';
import 'package:provider/provider.dart';
import 'package:video_player/video_player.dart';

import '../stores/tui_jian.dart';

class TuiJianPlayerControl extends StatefulWidget {
  const TuiJianPlayerControl({super.key, required this.item, this.onChange});
  final TabViewItem item;
  final Function? onChange;

  @override
  State<TuiJianPlayerControl> createState() => _TuiJianPlayerControlState();
}

class _TuiJianPlayerControlState extends State<TuiJianPlayerControl> {
  late final TuiJianModel _tuiJianModel = Provider.of<TuiJianModel>(context, listen: true);
  bool _isVisible = true;
  final FocusScopeNode _node = FocusScopeNode();
  final FocusScopeNode _tabNode = FocusScopeNode();
  final Map<String, FocusScopeNode> _viewNodes = {};
  Timer? _hideTimer;
  @override
  void initState() {
    super.initState();
    _resetHideTimer();
    // debugPrint("initState");
    // debugPrint(_tuiJianModel.items.length.toString());
  }

  @override
  void didUpdateWidget(covariant TuiJianPlayerControl oldWidget) {
    super.didUpdateWidget(oldWidget);
    debugPrint("didUpdateWidget");
    debugPrint(_tuiJianModel.items.length.toString());
  }

  void _resetHideTimer() {
    _hideTimer?.cancel();
    _hideTimer = Timer(const Duration(seconds: 3), () {
      if (mounted) {
        setState(() {
          _isVisible = false;
        });
      }
    });
  }
  KeyEventResult _handleKeyEvent(FocusNode node,KeyEvent event){
    if (event is KeyUpEvent) {
      Logger().d({
        "node": _node,
        "key": event.logicalKey,
        "hasFocus": _node.hasFocus,
        "focusedChild": _node.focusedChild,
        "children.length": _node.children.length,
        "view.length": _tuiJianModel.items[_tuiJianModel.items.keys.first]?.view.length,
      });
      final key = event.logicalKey;
      if (key == LogicalKeyboardKey.goBack) {
        context.pop();
      } else if (key == LogicalKeyboardKey.arrowUp) {
        Logger().t(_viewNodes[_tuiJianModel.currentTabKey]?.hasFocus);
      } else if (key == LogicalKeyboardKey.arrowDown) {
        _node.focusedChild?.nextFocus();
      } else if (key == LogicalKeyboardKey.enter || key == LogicalKeyboardKey.select) {
        _node.focusedChild?.nextFocus();
      }
    }
    return KeyEventResult.handled;
  }

  @override
  Widget build(BuildContext context) {
    return FocusScope(
      node: _node,
      onKeyEvent: _handleKeyEvent,
      child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(color: Color(0xF0FFFFFF)),
              width: 200,
              margin: EdgeInsets.symmetric(vertical: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  FocusScope(
                    node: _tabNode,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(onPressed: (){}, icon: Icon(Icons.chevron_left)),
                        ..._tuiJianModel.items.keys.map((key) => Visibility(
                          visible: _tuiJianModel.currentTabKey == key,
                          child: Text(_tuiJianModel.items[key]!.bar),
                        )),
                        IconButton(onPressed: (){}, icon: Icon(Icons.chevron_right)),
                      ],
                    ),
                  ),
                  Divider(),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: _tuiJianModel.items.keys.map((key){
                        setState(() {_viewNodes[key] = FocusScopeNode();});
                        return Visibility(
                          visible: _tuiJianModel.currentTabKey == key,
                          child: Expanded(
                            child: FocusScope(
                              node: _viewNodes[key],
                              child: ListView.builder(
                                itemCount: _tuiJianModel.items[key]!.view.length,
                                itemBuilder: (BuildContext context, int index) {
                                  final item = _tuiJianModel.items[key]!.view[index];
                                  return ListTile(
                                    onFocusChange: (focus){
                                      if (focus) {
                                        widget.onChange?.call(item);
                                      }
                                    },
                                    title: Text(item.title),
                                    onTap: () => widget.onChange?.call(item),
                                  );
                                },
                              ),
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
            )
          ]
      ),
    );
  }
}