import 'package:flutter/material.dart';

class FeatureTile extends StatelessWidget {
  const FeatureTile({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    this.isAvailable = true,
  });

  final IconData icon;
  final String title;
  final String subtitle;
  final bool isAvailable;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      trailing: Icon(icon),
      title: isAvailable
          ? Text(title)
          : Text('$title (Coming Soon)',
              style: TextStyle(
                color: Theme.of(context).colorScheme.secondary,
              )),
      subtitle: Text(
        subtitle,
        style: TextStyle(
          color: Theme.of(context).colorScheme.onSurface.withAlpha(100),
        ),
      ),
      leading: Icon(
        isAvailable ? Icons.check_circle : Icons.construction,
        color: isAvailable
            ? Theme.of(context).colorScheme.primary
            : Theme.of(context).colorScheme.secondary,
      ),
    );
  }
}
