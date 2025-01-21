import 'dart:developer';

import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_counter/data/models/setting.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

class SettingService extends ChangeNotifier {
  static late Isar isar;
  Setting? setting;

  SettingService() {
    fetchSetting();
  }

  static Future<void> initialize() async {
    final dir = await getApplicationDocumentsDirectory();
    isar =
        await Isar.open([SettingSchema], directory: dir.path, name: 'settings');
    log('Initialized', name: 'SettingService');

    // remove all settings if more than one exists
    await isar.writeTxn(() async {
      final ids = await isar.settings.where().idProperty().findAll();

      if (ids.length > 1) {
        await isar.settings.deleteAll(ids.sublist(1));
        log('Deleted multiple settings', name: 'SettingService');
      }
    });

    final isNotExists = await isar.settings.where().count() == 0;

    if (isNotExists) {
      log('Seeding initial data', name: 'SettingService');
      await isar.writeTxn(() async {
        await isar.settings.put(Setting());
      });
    }
  }

  Future<void> fetchSetting() async {
    final setting = await isar.settings.where().findFirst();
    this.setting = setting;
    notifyListeners();
  }

  Future<void> updateThemeMode(ThemeMode themeMode) async {
    final setting = await isar.settings.where().findFirst();
    await isar.writeTxn(() async {
      await isar.settings.put(setting!..themeMode = themeMode);
    });
    log('Updating theme mode: $themeMode', name: 'SettingService');

    fetchSetting();
  }

  Future<void> updateColorScheme(FlexScheme colorScheme) async {
    final setting = await isar.settings.where().findFirst();
    await isar.writeTxn(() async {
      await isar.settings.put(setting!..colorScheme = colorScheme);
    });
    log('Updating color scheme: $colorScheme', name: 'SettingService');

    fetchSetting();
  }
}
