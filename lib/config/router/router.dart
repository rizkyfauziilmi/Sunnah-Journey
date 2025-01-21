import 'package:flutter/material.dart';
import 'package:flutter_counter/modules/add_subscription/add_subscription_page.dart';
import 'package:flutter_counter/modules/home/home_page.dart';
import 'package:flutter_counter/modules/my_sunnah/my_sunnah_page.dart';
import 'package:flutter_counter/modules/settings/settings_page.dart';
import 'package:flutter_counter/shared/widgets/bottom_navigation_scaffold.dart';
import 'package:go_router/go_router.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();

// GoRouter configuration
final router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: '/',
  routes: [
    ShellRoute(
      navigatorKey: _shellNavigatorKey,
      builder: (context, state, child) =>
          BottomNavigationScaffold(child: child),
      routes: [
        GoRoute(
          path: '/',
          parentNavigatorKey: _shellNavigatorKey,
          builder: (context, state) => HomePage(),
        ),
        GoRoute(
          path: '/my_sunnah',
          parentNavigatorKey: _shellNavigatorKey,
          builder: (context, state) => MySunnahPage(),
        ),
        GoRoute(
          path: '/add_subscription',
          parentNavigatorKey: _shellNavigatorKey,
          builder: (context, state) => AddSubscriptionPage(),
        ),
      ],
    ),
    GoRoute(
      path: '/settings',
      parentNavigatorKey: _rootNavigatorKey,
      builder: (context, state) => SettingsPage(),
    ),
  ],
);
