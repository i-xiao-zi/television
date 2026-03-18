import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:television/stores/focus.dart';

class Layout extends StatefulWidget {
  const Layout({super.key, required this.child});
  final Widget child;
  @override
  State<Layout> createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  late FocusModel focusModel = Provider.of<FocusModel>(context);
  void _handleKeyEvent(KeyEvent event){
    if (event is KeyUpEvent) {
      focusModel.addEvent(event);
      if (kDebugMode) {
        print(event.physicalKey);
        print(event.logicalKey);
      }}
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('app bar'),
      ),
      body: widget.child,
    );
  }
}