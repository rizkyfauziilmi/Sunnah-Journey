import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_counter/modules/settings/components/feature_tile.dart';
import 'package:flutter_counter/modules/settings/components/setting_expansion_tile.dart';
import 'package:flutter_counter/modules/settings/components/setting_label.dart';

class InfoApp extends StatelessWidget {
  const InfoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SettingLabel(icon: Icons.info_outline, label: 'Info App'),
        SizedBox(height: 16),
        SettingExpansionTile(
          title: 'Features list',
          leadingIcon: Icon(Icons.featured_play_list),
          subtitle: 'See the list of features that are available in this app.',
          roundedPosition: RoundedPosition.top,
          children: [
            SizedBox(
              height: 250,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    FeatureTile(
                      icon: Icons.storage,
                      title: 'Local Database Storage',
                      subtitle: 'Store your data locally on your device. with '
                          'this feature, you can access your data even when you are '
                          'offline!',
                    ),
                    FeatureTile(
                      icon: Icons.refresh,
                      title: 'Auto Reset Routine',
                      subtitle:
                          'Automatically reset your routine based on your preference.',
                    ),
                    FeatureTile(
                      icon: Icons.notifications_active,
                      title: 'Notification Reminder',
                      subtitle: 'Get notified to do your sunnahs every day.',
                      isAvailable: false,
                    ),
                    FeatureTile(
                      icon: Icons.analytics_outlined,
                      title: 'Analytics',
                      subtitle:
                          'Track your sunnahs and see your progress with the '
                          'analytics.',
                      isAvailable: false,
                    ),
                    FeatureTile(
                      title: '3 Theme Modes',
                      icon: Icons.brightness_4,
                      subtitle:
                          'Choose from light, dark, or system default theme mode.',
                    ),
                    FeatureTile(
                      icon: Icons.format_color_fill_outlined,
                      title: 'Customizable Color Schemes',
                      subtitle:
                          'Choose from ${FlexColor.schemes.length} different color schemes to customize '
                          'the look of the app.',
                    ),
                    FeatureTile(
                      icon: Icons.devices_other_outlined,
                      title: 'Cross-Platform Support',
                      subtitle:
                          'Use the app on multiple platforms, including Android, '
                          'iOS, Windows, and more!',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        SettingExpansionTile(
          title: 'Release Notes',
          leadingIcon: Icon(Icons.update),
          subtitle: 'See details changes and updates in specific version.',
          roundedPosition: RoundedPosition.none,
        ),
        SettingExpansionTile(
            title: 'FAQs',
            leadingIcon: Icon(Icons.question_answer),
            subtitle: 'Find answers to frequently asked questions.',
            roundedPosition: RoundedPosition.none),
        SettingExpansionTile(
            title: 'Software Licenses',
            leadingIcon: Icon(Icons.code),
            subtitle: 'See the list of software licenses used in this app.',
            roundedPosition: RoundedPosition.none),
        SettingExpansionTile(
          title: 'About Us',
          leadingIcon: Icon(Icons.people),
          subtitle: 'Learn more about the team behind this app.',
          roundedPosition: RoundedPosition.none,
        ),
        SettingExpansionTile(
          title: 'Privacy Policy',
          leadingIcon: Icon(Icons.privacy_tip),
          subtitle: 'Read our privacy policy to know how we handle your data.',
          roundedPosition: RoundedPosition.none,
        ),
        SettingExpansionTile(
            title: 'Terms of Service',
            leadingIcon: Icon(Icons.description),
            subtitle:
                'Read our terms of service to know the rules of using our app.',
            roundedPosition: RoundedPosition.bottom),
      ],
    );
  }
}
