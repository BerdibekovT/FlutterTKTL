import 'package:flutter/material.dart';
import 'package:sup/main.dart';
import 'package:sup/pages/columnrow.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  initialLocation: "/",
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
);