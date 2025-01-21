import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';

class MySunnahNotFound extends StatelessWidget {
  const MySunnahNotFound({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      children: [
        Lottie.asset(
          'assets/lotties/notfoundtask.json',
          reverse: true,
          width: 350,
          height: 350,
          fit: BoxFit.fill,
        ),
        Text(
          'No Sunnahs found',
          style: theme.textTheme.headlineSmall,
        ),
        Text(
          'Start your journey by adding some Sunnahs.',
          style: theme.textTheme.bodyMedium!.copyWith(
            color: theme.hintColor,
          ),
        ),
        Gap(16),
        ElevatedButton.icon(
          onPressed: () {
            context.go("/add_subscription");
          },
          icon: Icon(Icons.add_task_rounded),
          label: Text('Add Sunnah'),
        ),
      ],
    );
  }
}
