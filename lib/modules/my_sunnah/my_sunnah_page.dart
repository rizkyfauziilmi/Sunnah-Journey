import 'package:flutter/material.dart';
import 'package:flutter_counter/data/services/sunnah_service.dart';
import 'package:flutter_counter/modules/my_sunnah/components/my_sunnah_not_found.dart';
import 'package:flutter_counter/modules/my_sunnah/components/sunnah_card.dart';
import 'package:flutter_counter/shared/widgets/loading_animation.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:provider/provider.dart';

class MySunnahPage extends StatefulWidget {
  const MySunnahPage({super.key});

  @override
  State<MySunnahPage> createState() => _MySunnahPageState();
}

class _MySunnahPageState extends State<MySunnahPage> {
  late FToast fToast;

  @override
  void initState() {
    super.initState();
    fToast = FToast();
    fToast.init(context);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: StreamBuilder(
        stream: context
            .read<SunnahService>()
            .listenSubscribedSunnahs(screenName: 'MySunnahPage'),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return LoadingAnimation();
          }

          if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          }

          final sunnahs = snapshot.data;
          sunnahs!.sort((a, b) => a.subscription!.isCompleted
              ? 1
              : b.subscription!.isCompleted
                  ? 2
                  : 0);

          if (sunnahs.isNotEmpty) {
            return ListView.builder(
              itemCount: sunnahs.length,
              itemBuilder: (context, index) {
                final theme = Theme.of(context);
                final sunnah = sunnahs[index];
                final subscription = sunnah.subscription;

                // range 0 - 1
                final progress = subscription!.currentCompletionCount /
                    subscription.targetCompletionCount;

                return SunnahCard(
                  sunnah: sunnah,
                  subscription: subscription,
                  theme: theme,
                  progress: progress,
                  fToast: fToast,
                );
              },
            );
          } else {
            return MySunnahNotFound();
          }
        },
      ),
    );
  }
}
