import 'package:flutter/material.dart';
import 'package:flutter_counter/data/models/sunnah.dart';
import 'package:flutter_counter/data/services/sunnah_service.dart';
import 'package:flutter_counter/shared/widgets/toast_container.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:jiffy/jiffy.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:provider/provider.dart';

class SunnahCard extends StatelessWidget {
  const SunnahCard({
    super.key,
    required this.sunnah,
    required this.subscription,
    required this.theme,
    required this.progress,
    required this.fToast,
  });

  final Sunnah sunnah;
  final SunnahSubscription subscription;
  final ThemeData theme;
  final double progress;
  final FToast fToast;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          spacing: 8,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  spacing: 2,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      sunnah.title,
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            decoration: subscription.isCompleted
                                ? TextDecoration.lineThrough
                                : TextDecoration.none,
                            color: subscription.isCompleted
                                ? theme.hintColor
                                : theme.colorScheme.primary,
                          ),
                    ),
                    Row(
                      spacing: 6,
                      children: [
                        Icon(Icons.alarm_off_outlined,
                            size: 15, color: theme.hintColor),
                        Text(
                          "reset ${Jiffy.parseFromDateTime(subscription.resetAt).fromNow()}",
                          style: theme.textTheme.bodySmall!.copyWith(
                            color: theme.hintColor,
                          ),
                        )
                      ],
                    ),
                    Row(
                      spacing: 6,
                      children: [
                        Icon(Icons.schedule_outlined,
                            size: 15, color: theme.hintColor),
                        Text(
                          subscription.resetSchedule.name,
                          style: theme.textTheme.bodySmall!.copyWith(
                            color: theme.hintColor,
                          ),
                        )
                      ],
                    ),
                    Row(
                      spacing: 6,
                      children: [
                        Icon(Icons.task_alt_rounded,
                            size: 15, color: theme.hintColor),
                        Text(
                          '${subscription.currentCompletionCount}/${subscription.targetCompletionCount}',
                          style: theme.textTheme.bodySmall!.copyWith(
                            color: theme.hintColor,
                          ),
                        )
                      ],
                    )
                  ],
                ),
                CircularPercentIndicator(
                  radius: 30.0,
                  animateFromLastPercent: true,
                  animation: true,
                  lineWidth: 5.0,
                  addAutomaticKeepAlive: false,
                  animationDuration: 1000,
                  percent: progress.toDouble(),
                  center: Text('${(progress * 100).toStringAsFixed(0)}%',
                      style: theme.textTheme.bodyMedium),
                  circularStrokeCap: CircularStrokeCap.round,
                  progressColor: theme.colorScheme.primary,
                )
              ],
            ),
            Divider(thickness: 1),
            Row(
              spacing: 6,
              children: [
                Expanded(
                  child: TextButton.icon(
                    style: TextButton.styleFrom(
                      backgroundColor: theme.colorScheme.surfaceContainerHigh,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(8),
                        ),
                      ),
                    ),
                    onPressed: () {},
                    label: Text(
                      "See more details",
                    ),
                    icon: Icon(Icons.info_outline),
                  ),
                ),
                IconButton.filled(
                  style: TextButton.styleFrom(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(8),
                      ),
                    ),
                  ),
                  onPressed: !subscription.isCompleted
                      ? () {
                          context
                              .read<SunnahService>()
                              .updateProgress(
                                sunnahId: sunnah.id,
                                method: ProgressMethod.increment,
                              )
                              .then((response) {
                            showToast(
                              response: response,
                              fToast: fToast,
                            );
                          });
                        }
                      : null,
                  icon: Icon(Icons.checklist_outlined),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
