import 'package:flutter/material.dart';
import 'package:flutter_counter/modules/home/screens/add_subscription_screen.dart';
import 'package:flutter_counter/modules/home/screens/my_sunnah_screen.dart';
import 'package:flutter_counter/modules/home/screens/home_screen.dart';
import 'package:flutter_counter/shared/services/bottom_navigation_service.dart';
import 'package:provider/provider.dart';
import 'package:flutter_counter/shared/widgets/bottom_navigation.dart';

class HomePage extends StatelessWidget {
  HomePage({
    super.key,
  });

  final Map<int, Widget> pages = {
    0: HomeScreen(),
    1: MySunnahScreen(),
    2: AddSubscriptionScreen(),
    3: Center(
      child: Text('Favorite Page'),
    ),
    4: Center(
      child: Text('Settings Page'),
    ),
  };

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Consumer<BottomNavigationService>(
          builder: (context, bottomNavigationService, child) {
            return pages[bottomNavigationService.currentIndex] ??
                Center(child: Text('Page not found'));
          },
        ),
        bottomNavigationBar: BottomNavigation(),
      ),
    );
  }
}
