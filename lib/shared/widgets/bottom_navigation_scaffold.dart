import 'package:flutter/material.dart';
import 'package:flutter_counter/shared/widgets/bottom_navigation.dart';
import 'package:go_router/go_router.dart';

class BottomNavigationScaffold extends StatefulWidget {
  final Widget child;

  const BottomNavigationScaffold({super.key, required this.child});

  @override
  State<BottomNavigationScaffold> createState() =>
      _BottomNavigationScaffoldState();
}

class _BottomNavigationScaffoldState extends State<BottomNavigationScaffold> {
  void changeTab(String route) {
    switch (route) {
      case '/':
        context.go('/');
        break;
      case '/my_sunnah':
        context.go('/my_sunnah');
        break;
      case '/add_subscription':
        context.go('/add_subscription');
        break;
      default:
        context.go('/');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.child,
      bottomNavigationBar: BottomNavigation(changeTab: changeTab),
    );
  }
}
