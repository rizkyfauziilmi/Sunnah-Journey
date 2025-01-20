import 'package:flutter/material.dart';
import 'package:flutter_counter/modules/home/components/sunnah_category_chart.dart';
import 'package:flutter_counter/modules/home/components/sunnah_today_chart.dart';
import 'package:flutter_counter/shared/services/bottom_navigation_service.dart';
import 'package:provider/provider.dart';

class SunnahProgress extends StatelessWidget {
  const SunnahProgress({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              spacing: 8,
              children: [
                Icon(
                  Icons.tips_and_updates_outlined,
                  color: Theme.of(context).colorScheme.secondary,
                ),
                Text(
                  "Your Sunnah Overview",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ],
            ),
            TextButton(
              onPressed: () {
                context.read<BottomNavigationService>().updateIndex(1);
              },
              child: Text(
                "See all your Sunnah",
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                    ),
              ),
            )
          ],
        ),
        SizedBox(
          height: 4,
        ),
        Column(
          children: [
            Column(
              spacing: 4,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SunnahTodayChart(),
                SunnahCategoryChart(),
              ],
            )
          ],
        ),
      ],
    );
  }
}
