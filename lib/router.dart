import 'package:flutter/material.dart';
import 'package:sup/pages/columnrow.dart';
import 'package:go_router/go_router.dart';

final _router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => MyApp(),
    ),
    GoRoute(
      path: '/columnRow',
      builder: (context, state) => ColumnRow()
    )
  ],
);

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
    );
  }
}