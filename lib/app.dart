import 'package:flutter/material.dart';
import 'package:television/router.dart';
import 'package:television/stores/index.dart';
import 'package:television/theme.dart';

class App extends StatefulWidget {
  const App({super.key});
  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {

  @override
  Widget build(BuildContext context) {
    return StoreProvider(
      context: context,
      child: MaterialApp.router(
        title: 'Flutter',
        routerConfig: router(),
        debugShowCheckedModeBanner: false,
        theme: theme(),
      ),
    );
  }
}