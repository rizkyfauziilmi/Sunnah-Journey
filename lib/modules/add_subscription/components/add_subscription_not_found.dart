import 'package:flutter/material.dart';
import 'package:flutter_counter/data/services/sunnah_service.dart';
import 'package:gap/gap.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

class AddSubscriptionNotFound extends StatelessWidget {
  const AddSubscriptionNotFound({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Lottie.asset(
              'assets/lotties/database.json',
              reverse: true,
              width: 150,
              height: 150,
              fit: BoxFit.fill,
            ),
            Text(
              'No Sunnahs in Database',
              style: theme.textTheme.headlineSmall,
            ),
            Text(
              'Seed the database with some Sunnahs.',
              style: theme.textTheme.bodyMedium!.copyWith(
                color: theme.hintColor,
              ),
            ),
            Gap(16),
            ElevatedButton.icon(
              onPressed: () {
                context.read<SunnahService>().seed();
              },
              icon: Icon(Icons.data_array_rounded),
              label: Text('Seed Database'),
            ),
          ],
        ),
      ),
    );
  }
}
