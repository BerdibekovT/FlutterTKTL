import 'package:flutter/material.dart';
import 'package:sup/main.dart';
import 'package:sup/pages/columnrow.dart';
import 'package:go_router/go_router.dart';



final _parentKey = GlobalKey<NavigatorState>();
final _shellKey = GlobalKey<NavigatorState>();

Page<void> noTransitionPageBuilder(
    BuildContext context, GoRouterState state, Widget child) {
  return CustomTransitionPage<void>(
    key: state.pageKey,
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return child; // No animation
    },
  );
}

final router = GoRouter(navigatorKey: _parentKey, routes: [
   ShellRoute(
    navigatorKey: _shellKey,
    builder: (context, state, child) => HomePage(
    ),
    routes: [
    GoRoute(
      path: "/",
      builder: (context, state)=> HomePage(),
     ),
    GoRoute(
      path: "/columnrow",
      builder: (context, state)=> const ColumnRow(),
     ),
  ]
  )
]
 
  
);