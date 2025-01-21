import 'package:flutter_counter/data/models/setting.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

class SettingRepository {
  static late Isar isar;

  static Future<void> initialize() async {
    final dir = await getApplicationDocumentsDirectory();
    isar =
        await Isar.open([SettingSchema], directory: dir.path, name: 'settings');
  }

  Future<Setting?> getSetting() async {
    return await isar.settings.where().findFirst();
  }

  Future<void> updateSetting(Setting setting) async {
    await isar.writeTxn(() async {
      await isar.settings.put(setting);
    });
  }

  Future<List<int>> getAllIds() async {
    return await isar.settings.where().idProperty().findAll();
  }

  Future<void> deleteSettings(List<int> ids) async {
    await isar.writeTxn(() async {
      await isar.settings.deleteAll(ids);
    });
  }

  Future<bool> checkIfSettingExists() async {
    return await isar.settings.where().count() > 0;
  }
}
