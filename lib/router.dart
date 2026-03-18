import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:television/stores/tui_jian.dart';
import 'package:television/views/index.dart';
import 'package:television/views/layout.dart';
import 'package:television/views/tui_jian_player.dart';
import 'package:television/views/tui_jian_player_control.dart';

final RouteObserver<ModalRoute<void>> routeObserver = RouteObserver<ModalRoute<void>>();

GoRouter router() {
  return GoRouter(
    initialLocation: '/',
    observers: [routeObserver],
    routes: <RouteBase>[
      ShellRoute(
        builder: (BuildContext context, GoRouterState state, Widget child) {
          return Layout(child: child);
        },
        routes: [GoRoute(path: '/', builder: (context, state) => const HomePage())],
      ),

      GoRoute(
        path: '/tui_jian/player',
        builder: (context, state) => TuiJianPlayer(item: state.extra as TabViewItem),
      ),
      GoRoute(
        path: '/player',
        builder: (context, state) => TuiJianPlayerControl(item: TabViewItem("", "")),
      ),
    ],
  );
}
