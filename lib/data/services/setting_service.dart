import 'dart:developer';

import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_counter/data/models/setting.dart';
import 'package:flutter_counter/data/repositories/setting_repository.dart';

class SettingService extends ChangeNotifier {
  final SettingRepository _settingRepository = SettingRepository();
  Setting? setting;

  SettingService() {
    fetchSetting();
  }

  static Future<void> initialize() async {
    await SettingRepository.initialize();
    await SettingService().deleteMultipleSettings();
    await SettingService().setInitialSetting();

    log('Initialized', name: 'SettingService');
  }

  Future<void> setInitialSetting() async {
    final isExist = await _settingRepository.checkIfSettingExists();

    if (!isExist) {
      log('Seeding initial data', name: 'SettingService');
      await _settingRepository.updateSetting(Setting());
    }
  }

  Future<void> deleteMultipleSettings() async {
    final ids = await _settingRepository.getAllIds();

    if (ids.length > 1) {
      await _settingRepository.deleteSettings(ids.sublist(1));
      log('Deleted multiple settings', name: 'SettingService');
    }
  }

  Future<void> fetchSetting() async {
    setting = await _settingRepository.getSetting();
    notifyListeners();
  }

  Future<void> updateThemeMode(ThemeMode themeMode) async {
    final setting = await _settingRepository.getSetting();
    if (setting != null) {
      setting.themeMode = themeMode;
      await _settingRepository.updateSetting(setting);
      log('Updating theme mode: ${themeMode.name}', name: 'SettingService');
      fetchSetting();
    }
  }

  Future<void> updateColorScheme(FlexScheme colorScheme) async {
    final setting = await _settingRepository.getSetting();
    if (setting != null) {
      setting.colorScheme = colorScheme;
      await _settingRepository.updateSetting(setting);
      log('Updating color scheme: ${colorScheme.name}', name: 'SettingService');
      fetchSetting();
    }
  }
}
