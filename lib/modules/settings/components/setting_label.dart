import 'package:flutter/material.dart';

class SettingLabel extends StatelessWidget {
  const SettingLabel({
    super.key,
    required this.label,
    required this.icon,
  });

  final String label;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 4,
      children: [
        Icon(
          icon,
          color: Theme.of(context).colorScheme.onSurface.withAlpha(100),
        ),
        Text(
          label,
          style: TextStyle(
            color: Theme.of(context).colorScheme.onSurface.withAlpha(100),
          ),
        ),
      ],
    );
  }
}
