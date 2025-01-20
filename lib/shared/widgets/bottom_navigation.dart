import 'package:flutter/material.dart';
import 'package:flutter_counter/shared/services/bottom_navigation_service.dart';
import 'package:provider/provider.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation>
    with SingleTickerProviderStateMixin {
  List<IconData> icons = [
    Icons.home_rounded,
    Icons.task_alt_rounded,
    Icons.add_rounded,
    Icons.notifications_rounded,
    Icons.emoji_events_rounded
  ];

  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SafeArea(
      child: Container(
        height: 56,
        margin: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: theme.colorScheme.primary,
          borderRadius: BorderRadius.circular(100),
          boxShadow: [
            BoxShadow(
              color:
                  Colors.black.withValues(alpha: 0.1), // Shadow untuk elevasi
              offset: const Offset(0, 4),
              blurRadius: 10,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: icons
              .asMap()
              .entries
              .map(
                (entry) => InkWell(
                  onTap: () {
                    context
                        .read<BottomNavigationService>()
                        .updateIndex(entry.key);
                    _controller.forward(from: 0);
                  },
                  child: AnimatedScale(
                    scale:
                        context.watch<BottomNavigationService>().currentIndex ==
                                entry.key
                            ? 1.2
                            : 1,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeOut,
                    child: Transform.translate(
                      offset: entry.value == Icons.add_rounded
                          ? const Offset(0, -10)
                          : Offset.zero,
                      child: Container(
                        width: entry.value == Icons.add_rounded ? 50 : 40,
                        height: entry.value == Icons.add_rounded ? 50 : 40,
                        decoration: BoxDecoration(
                          color: context
                                      .watch<BottomNavigationService>()
                                      .currentIndex ==
                                  entry.key
                              ? theme.colorScheme.inversePrimary
                              : theme.colorScheme.primary,
                          borderRadius: BorderRadius.circular(24),
                          border: entry.value == Icons.add_rounded
                              ? Border.all(
                                  color: theme.colorScheme.inversePrimary,
                                  width: 2,
                                )
                              : null,
                        ),
                        child: Icon(
                          entry.value,
                          color: context
                                      .watch<BottomNavigationService>()
                                      .currentIndex ==
                                  entry.key
                              ? theme.colorScheme.primary
                              : theme.colorScheme.onPrimary
                                  .withValues(alpha: 0.8),
                          size: entry.value == Icons.add_rounded ? 30 : 24,
                        ),
                      ),
                    ),
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
