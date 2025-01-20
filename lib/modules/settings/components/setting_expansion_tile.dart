import 'package:flutter/material.dart';

enum RoundedPosition { top, bottom, none }

class SettingExpansionTile extends StatelessWidget {
  SettingExpansionTile({
    super.key,
    required this.title,
    this.roundedPosition = RoundedPosition.none,
    this.subtitle,
    this.leadingIcon,
    this.children,
  });

  final roundedPositionMap = <RoundedPosition, BorderRadiusGeometry>{
    RoundedPosition.top: BorderRadius.only(
      topLeft: Radius.circular(16),
      topRight: Radius.circular(16),
    ),
    RoundedPosition.bottom: BorderRadius.only(
      bottomLeft: Radius.circular(16),
      bottomRight: Radius.circular(16),
    ),
    RoundedPosition.none: BorderRadius.zero,
  };

  final RoundedPosition roundedPosition;
  final String title;
  final String? subtitle;
  final Icon? leadingIcon;
  final List<Widget>? children;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      backgroundColor: Theme.of(context).colorScheme.surfaceContainer,
      collapsedBackgroundColor: Theme.of(context).colorScheme.surfaceContainer,
      shape: RoundedRectangleBorder(
        borderRadius: roundedPositionMap[roundedPosition] as BorderRadius,
      ),
      collapsedShape: RoundedRectangleBorder(
        borderRadius: roundedPositionMap[roundedPosition] as BorderRadius,
      ),
      subtitle: subtitle != null
          ? Text(
              subtitle!,
              style: TextStyle(
                color: Theme.of(context).colorScheme.onSurface.withAlpha(100),
              ),
            )
          : null,
      leading: leadingIcon,
      dense: true,
      title: Text(title),
      children: children ?? [],
    );
  }
}
