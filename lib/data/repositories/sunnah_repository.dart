import 'package:flutter_counter/data/models/sunnah.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

/// A repository class for managing Sunnah data using the Isar database.
class SunnahRepository {
  /// The Isar instance used for database operations.
  static late Isar isar;

  /// Initializes the Isar database with the specified schema and directory.
  static Future<void> initialize() async {
    final dir = await getApplicationDocumentsDirectory();
    isar = await Isar.open([SunnahSchema], directory: dir.path, name: 'sunnah');

    await isar.writeTxn(() async {
      await isar.sunnahs.clear();
    });
  }

  /// Retrieves a Sunnah object by its ID.
  ///
  /// [sunnahId] - The ID of the Sunnah to retrieve.
  ///
  /// Returns the Sunnah object if found, otherwise null.
  Future<Sunnah?> getSunnah(int sunnahId) async {
    return await isar.sunnahs.get(sunnahId);
  }

  /// Retrieves all Sunnah objects from the database.
  ///
  /// Returns a list of all Sunnah objects.
  Future<List<Sunnah>> getAllSunnahs() async {
    return await isar.sunnahs.where().findAll();
  }

  /// Inserts or updates a Sunnah object in the database.
  ///
  /// [sunnah] - The Sunnah object to insert or update.
  Future<void> putSunnah(Sunnah sunnah) async {
    await isar.writeTxn(() async {
      await isar.sunnahs.put(sunnah);
    });
  }

  /// Deletes a Sunnah object from the database by its ID.
  ///
  /// [sunnahId] - The ID of the Sunnah to delete.
  Future<void> deleteSunnah(int sunnahId) async {
    await isar.writeTxn(() async {
      await isar.sunnahs.delete(sunnahId);
    });
  }

  /// Watches for changes to subscribed Sunnah objects.
  ///
  /// Returns a stream of lists of subscribed Sunnah objects.
  Stream<List<Sunnah>> watchSubscribedSunnahs() {
    return isar.sunnahs
        .where()
        .filter()
        .subscriptionIsNotNull()
        .watch(fireImmediately: true);
  }

  /// Watches for changes to Sunnah objects by category.
  ///
  /// [category] - The category to filter Sunnah objects by.
  ///
  /// Returns a stream of lists of Sunnah objects in the specified category.
  Stream<List<Sunnah>> watchSunnahsByCategory(SunnahCategory category) {
    return isar.sunnahs
        .where()
        .filter()
        .categoryEqualTo(category)
        .watch(fireImmediately: true);
  }

  /// Retrieves a list of Sunnah objects with subscriptions that need to be reset.
  ///
  /// [now] - The current date and time.
  ///
  /// Returns a list of Sunnah objects with subscriptions to reset.
  Future<List<Sunnah>> getSubscriptionsToReset(DateTime now) async {
    return await isar.sunnahs
        .where()
        .filter()
        .subscriptionIsNotNull()
        .and()
        .subscription((q) {
      return q.resetAtLessThan(now);
    }).findAll();
  }

  Future<bool> checkIfSunnahExists(String title) async {
    return await isar.sunnahs.where().filter().titleEqualTo(title).count() > 0;
  }
}
