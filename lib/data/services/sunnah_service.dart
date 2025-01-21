import 'dart:developer';

import 'package:flutter_counter/data/models/sunnah.dart';
import 'package:flutter_counter/shared/types/response_result.dart';
import 'package:flutter_counter/shared/constants/sunnah_data.dart';
import 'package:isar/isar.dart';
import 'package:jiffy/jiffy.dart';
import 'package:path_provider/path_provider.dart';

class SunnahService {
  static late Isar isar;

  /// Initialize Isar and seed database
  static Future<void> initialize() async {
    final dir = await getApplicationDocumentsDirectory();
    isar = await Isar.open([SunnahSchema], directory: dir.path, name: 'sunnah');
    log('Initialized', name: 'SunnahService');

    await SunnahService().seed();

    // TODO: use foreground service instead
    // TODO: check does the function works properly
    await SunnahService().resetSubscriptions();
  }

  /// Toggle subscription for a specific Sunnah
  Future<ResponseResult> toggleSubscription(int sunnahId) async {
    final sunnah = await isar.sunnahs.get(sunnahId);

    if (sunnah == null) {
      return errorResponse('Sunnah not found', 'Try to seed the database.');
    }

    return sunnah.subscription != null
        ? await _unsubscribeSunnah(sunnah)
        : await _subscribeSunnah(sunnah);
  }

  /// Seed the database with initial Sunnah data
  Future<ResponseResult> seed() async {
    final existingSunnahs = await isar.sunnahs.where().findAll();

    await _addOrUpdateSunnahs();
    await _deleteUnlistedSunnahs(existingSunnahs);

    return successResponse(
      'Seeded Successfully',
      '${sunnahData.length} Sunnahs have been seeded successfully.',
    );
  }

  /// Listen to subscribed Sunnahs
  Stream<List<Sunnah>> listenSubscribedSunnahs({String? screenName}) async* {
    log(
      'Listening Subscribed Sunnahs ${screenName != null ? 'for $screenName' : ''}',
      name: 'SunnahService',
    );

    yield* isar.sunnahs
        .where()
        .filter()
        .subscriptionIsNotNull()
        .watch(fireImmediately: true);
  }

  /// Listen to Sunnahs by category
  Stream<List<Sunnah>> listenSunnahsByCategory({
    required SunnahCategory category,
    String? screenName,
  }) async* {
    log(
      'Listening Sunnahs by Category ${category.name} ${screenName != null ? 'for $screenName' : ''}',
      name: 'SunnahService',
    );

    yield* isar.sunnahs
        .where()
        .filter()
        .categoryEqualTo(category)
        .watch(fireImmediately: true);
  }

  /// Update progress for a specific Sunnah
  Future<ResponseResult> updateProgress({
    required int sunnahId,
    required ProgressMethod method,
  }) async {
    final sunnah = await isar.sunnahs.get(sunnahId);

    if (sunnah == null) {
      return errorResponse('Sunnah not found', 'Try to seed the database.');
    }

    if (sunnah.subscription == null) {
      return errorResponse(
          'Sunnah not subscribed', 'Subscribe to the Sunnah first.');
    }

    return await _updateProgress(sunnah, method);
  }

  // Private helper methods
  Future<ResponseResult> _subscribeSunnah(Sunnah sunnah) async {
    final subscription = SunnahSubscription()
      ..targetCompletionCount = sunnah.defaultTarget;

    await isar.writeTxn(() async {
      sunnah.subscription = subscription;
      await isar.sunnahs.put(sunnah);
    });

    log('Subscribed to Sunnah: ${sunnah.title}', name: 'SunnahService');
    return successResponse(
      'Subscribed Successfully',
      'You have successfully subscribed to ${sunnah.title}.',
    );
  }

  Future<ResponseResult> _unsubscribeSunnah(Sunnah sunnah) async {
    await isar.writeTxn(() async {
      sunnah.subscription = null;
      await isar.sunnahs.put(sunnah);
    });

    log('Unsubscribed from Sunnah: ${sunnah.title}', name: 'SunnahService');
    return successResponse(
      'Unsubscribed Successfully',
      'You have successfully unsubscribed from ${sunnah.title}.',
    );
  }

  Future<void> _addOrUpdateSunnahs() async {
    for (var sunnah in sunnahData) {
      final exists =
          await isar.sunnahs.filter().titleEqualTo(sunnah.title).findFirst() !=
              null;

      if (!exists) {
        await isar.writeTxn(() async {
          await isar.sunnahs.put(
            Sunnah()
              ..title = sunnah.title
              ..description = sunnah.description
              ..category = sunnah.category
              ..defaultTarget = sunnah.defaultTarget
              ..reference = sunnah.reference,
          );
        });
        log('Seeded Sunnah: ${sunnah.title}', name: 'SunnahService');
      }
    }
  }

  Future<void> _deleteUnlistedSunnahs(List<Sunnah> existingSunnahs) async {
    for (var existingSunnah in existingSunnahs) {
      final stillExists =
          sunnahData.any((sunnah) => sunnah.title == existingSunnah.title);

      if (!stillExists) {
        await isar.writeTxn(() async {
          await isar.sunnahs.delete(existingSunnah.id);
        });
        log('Deleted Sunnah from seed: ${existingSunnah.title}',
            name: 'SunnahService');
      }
    }
  }

  Future<ResponseResult> _updateProgress(
      Sunnah sunnah, ProgressMethod method) async {
    final subscription = sunnah.subscription!;
    final current = subscription.currentCompletionCount;
    final target = subscription.targetCompletionCount;

    switch (method) {
      case ProgressMethod.increment:
        return await _incrementProgress(sunnah, subscription, current, target);
      case ProgressMethod.decrement:
        return await _decrementProgress(sunnah, subscription, current);
      case ProgressMethod.reset:
        return await _resetProgress(sunnah, subscription);
    }
  }

  Future<ResponseResult> _incrementProgress(Sunnah sunnah,
      SunnahSubscription subscription, int current, int target) async {
    if (current >= target) {
      return errorResponse('Sunnah already completed',
          'You have already completed this Sunnah.');
    }
    subscription.currentCompletionCount++;
    if (subscription.currentCompletionCount == target) {
      subscription.isCompleted = true;
      subscription.completionCount++;
    }

    await isar.writeTxn(() async {
      await isar.sunnahs.put(sunnah);
    });

    return successResponse(
      subscription.isCompleted ? 'Sunnah Completed' : 'Progress Incremented',
      'Current progress: ${subscription.currentCompletionCount}/$target',
    );
  }

  Future<ResponseResult> _decrementProgress(
      Sunnah sunnah, SunnahSubscription subscription, int current) async {
    if (current <= 0) {
      return errorResponse('Sunnah cannot be negative',
          'You cannot decrement the progress below 0.');
    }
    subscription.currentCompletionCount--;
    subscription.isCompleted = false;

    await isar.writeTxn(() async {
      await isar.sunnahs.put(sunnah);
    });

    return successResponse(
      'Progress Decremented',
      'Current progress: ${subscription.currentCompletionCount}/${subscription.targetCompletionCount}',
    );
  }

  Future<ResponseResult> _resetProgress(
      Sunnah sunnah, SunnahSubscription subscription) async {
    subscription.currentCompletionCount = 0;
    subscription.isCompleted = false;

    await isar.writeTxn(() async {
      await isar.sunnahs.put(sunnah);
    });

    return successResponse(
      'Progress Reset',
      'Current progress: ${subscription.currentCompletionCount}/${subscription.targetCompletionCount}',
    );
  }

  /// Check every subscription and reset it if resetAt already passed
  Future<void> resetSubscriptions() async {
    final now = DateTime.now();

    final subscriptionsToReset = await isar.sunnahs
        .where()
        .filter()
        .subscriptionIsNotNull()
        .and()
        .subscription(
      (q) {
        return q.resetAtLessThan(now);
      },
    ).findAll();

    for (var sunnah in subscriptionsToReset) {
      _resetProgress(sunnah, sunnah.subscription!);

      await _updateResetAt(sunnah);

      log('Reset subscription for Sunnah: ${sunnah.title}',
          name: 'SunnahService');
    }
  }

  Future<void> _updateResetAt(Sunnah sunnah) async {
    final subscription = sunnah.subscription!;
    final resetTime = generateResetTime(subscription.resetSchedule);

    await isar.writeTxn(() async {
      sunnah.subscription!.resetAt = resetTime;
      await isar.sunnahs.put(sunnah);
    });
  }

  DateTime generateResetTime(ResetSchedule resetSchedule) {
    switch (resetSchedule) {
      case ResetSchedule.daily:
        // Start of the next day at 00:00
        return Jiffy.now().add(days: 1).startOf(Unit.day).dateTime;
      case ResetSchedule.weekly:
        // Start of the next week at 00:00
        return Jiffy.now().add(weeks: 1).startOf(Unit.week).dateTime;
      case ResetSchedule.monthly:
        // Start of the next month at 00:00
        return Jiffy.now().add(months: 1).startOf(Unit.month).dateTime;
      case ResetSchedule.yearly:
        // Start of the next year at 00:00
        return Jiffy.now().add(years: 1).startOf(Unit.year).dateTime;
    }
  }
}

enum ProgressMethod {
  increment,
  decrement,
  reset,
}
