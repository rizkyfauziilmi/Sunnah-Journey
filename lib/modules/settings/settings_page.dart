import 'package:flutter/material.dart';
import 'package:flutter_counter/modules/settings/components/appearance_settings.dart';
import 'package:flutter_counter/modules/settings/components/info_app.dart';
import 'package:flutter_counter/modules/settings/components/preview_user_profile.dart';
import 'package:go_router/go_router.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Settings'),
          leading: IconButton(
            onPressed: () {
              context.go('/');
            },
            icon: Icon(
              Icons.arrow_back_ios_new,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              spacing: 30,
              children: [
                PreviewUserProfile(
                  imageUrl:
                      'https://avatars.githubusercontent.com/u/60214314?v=4',
                  name: 'Muhammad Fawwaz',
                  bio: 'Mobile App Developer',
                ),
                AppearanceSettings(),
                InfoApp(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}





// Center(
//           // dark, light, system
//           child: ListView(
//             children: [
//               ListTile(
//                 leading: Icon(Icons.wb_sunny),
//                 title: Text('Light'),
//                 trailing: Radio<ThemeMode>(
//                   value: ThemeMode.light,
//                   groupValue:
//                       context.watch<SettingService>().setting?.themeMode,
//                   onChanged: (ThemeMode? value) {
//                     context.read<SettingService>().updateThemeMode(value!);
//                   },
//                 ),
//               ),
//               ListTile(
//                 leading: Icon(Icons.nights_stay),
//                 title: Text('Dark'),
//                 trailing: Radio<ThemeMode>(
//                   value: ThemeMode.dark,
//                   groupValue:
//                       context.watch<SettingService>().setting?.themeMode,
//                   onChanged: (ThemeMode? value) {
//                     context.read<SettingService>().updateThemeMode(value!);
//                   },
//                 ),
//               ),
//               ListTile(
//                 leading: Icon(Icons.app_settings_alt_outlined),
//                 title: Text('System'),
//                 trailing: Radio<ThemeMode>(
//                   value: ThemeMode.system,
//                   groupValue:
//                       context.watch<SettingService>().setting?.themeMode,
//                   onChanged: (ThemeMode? value) {
//                     context.read<SettingService>().updateThemeMode(value!);
//                   },
//                 ),
//               ),
//             ],
//           ),
//         ),