import 'package:flutter/material.dart';
import 'package:flutter_counter/modules/home/components/daily_quote.dart';
import 'package:flutter_counter/modules/home/components/sunnah_progress.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Padding(
      padding: const EdgeInsets.all(16),
      child: SingleChildScrollView(
        child: Column(
          spacing: 16,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(
                    'https://avatars.githubusercontent.com/u/60214314?v=4',
                  ),
                ),
                IconButton.filled(
                  onPressed: () {
                    context.go("/settings");
                  },
                  icon: const Icon(Icons.settings),
                ),
              ],
            ),
            DailyQuote(),
            SunnahProgress(),
          ],
        ),
      ),
    )));
  }
}
