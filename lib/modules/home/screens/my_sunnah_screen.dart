import 'package:flutter/material.dart';
import 'package:flutter_counter/database/services/sunnah_service.dart';
import 'package:flutter_counter/modules/home/components/sunnah_card.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:provider/provider.dart';

class MySunnahScreen extends StatefulWidget {
  const MySunnahScreen({super.key});

  @override
  State<MySunnahScreen> createState() => _MySunnahScreenState();
}

class _MySunnahScreenState extends State<MySunnahScreen> {
  late FToast fToast;

  @override
  void initState() {
    super.initState();
    fToast = FToast();
    fToast.init(context);

    // ! do not remove this
    // * it prevent outdated resetAt
    context.read<SunnahService>().resetSubscriptions();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: StreamBuilder(
        stream: context
            .read<SunnahService>()
            .listenSubscribedSunnahs(screenName: 'MySunnahScreen'),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          }

          final sunnahs = snapshot.data;
          sunnahs!.sort((a, b) => a.subscription!.isCompleted
              ? -1
              : b.subscription!.isCompleted
                  ? 1
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
            return const Center(child: Text('No Sunnahs'));
          }
        },
      ),
    );
  }
}
