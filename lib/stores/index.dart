import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './focus.dart';
import './tabs.dart';
import './tui_jian.dart';

class StoreProvider extends MultiProvider {
  StoreProvider({super.key, super.child, final BuildContext? context}): super(
    providers: [
      ChangeNotifierProvider(create: (BuildContext context) => FocusModel()),
      ChangeNotifierProvider(create: (BuildContext context) => TabsModel()),
      ChangeNotifierProvider(create: (BuildContext context) => TuiJianModel()),
    ],
  );
}