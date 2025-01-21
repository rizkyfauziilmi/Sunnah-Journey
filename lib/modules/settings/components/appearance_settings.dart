import 'package:flutter/material.dart';
import 'package:flutter_counter/data/services/setting_service.dart';
import 'package:flutter_counter/modules/settings/components/color_schemes_selector.dart';
import 'package:flutter_counter/modules/settings/components/setting_expansion_tile.dart';
import 'package:flutter_counter/modules/settings/components/setting_label.dart';
import 'package:provider/provider.dart';

class AppearanceSettings extends StatelessWidget {
  AppearanceSettings({super.key});

  final themeModeIconMap = {
    ThemeMode.light: Icons.wb_sunny,
    ThemeMode.dark: Icons.nights_stay,
    ThemeMode.system: Icons.app_settings_alt_outlined,
  };

  @override
  Widget build(BuildContext context) {
    final setting = context.watch<SettingService>().setting;

    return Column(
      children: [
        SettingLabel(icon: Icons.display_settings, label: 'Appearance'),
        SizedBox(height: 16),
        SettingExpansionTile(
          title: 'Theme Mode',
          subtitle:
              'Change the theme mode of the app to light, dark, or system default.',
          leadingIcon: Icon(
            themeModeIconMap[setting?.themeMode] ?? Icons.help_outline,
          ),
          roundedPosition: RoundedPosition.top,
          children: [
            ListTile(
              title: Text('Light'),
              trailing: Radio<ThemeMode>(
                value: ThemeMode.light,
                groupValue: setting?.themeMode,
                onChanged: (ThemeMode? value) {
                  if (value != null) {
                    context.read<SettingService>().updateThemeMode(value);
                  }
                },
              ),
            ),
            ListTile(
              title: Text('Dark'),
              trailing: Radio<ThemeMode>(
                value: ThemeMode.dark,
                groupValue: setting?.themeMode,
                onChanged: (ThemeMode? value) {
                  if (value != null) {
                    context.read<SettingService>().updateThemeMode(value);
                  }
                },
              ),
            ),
            ListTile(
              title: Text('System'),
              trailing: Radio<ThemeMode>(
                value: ThemeMode.system,
                groupValue: setting?.themeMode,
                onChanged: (ThemeMode? value) {
                  if (value != null) {
                    context.read<SettingService>().updateThemeMode(value);
                  }
                },
              ),
            ),
          ],
        ),
        SettingExpansionTile(
          title: 'Color Scheme (${setting?.colorScheme.name ?? 'Default'})',
          subtitle: 'Make your app more colorful with different color schemes.',
          leadingIcon: Icon(Icons.palette),
          roundedPosition: RoundedPosition.bottom,
          children: [
            const ColorSchemesSelector(),
          ],
        ),
      ],
    );
  }
}
