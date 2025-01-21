import 'dart:developer';

import 'package:flutter_counter/data/models/sunnah.dart';
import 'package:flutter_counter/data/repositories/sunnah_repository.dart';
import 'package:flutter_counter/shared/types/response_result.dart';
import 'package:flutter_counter/shared/constants/sunnah_data.dart';
import 'package:flutter_counter/shared/utils/conversion.dart';

class SunnahService {
  final SunnahRepository _repository = SunnahRepository();

  static Future<void> initialize() async {
    await SunnahRepository.initialize();
    await SunnahService().seed();
    log('Initialized', name: 'SunnahService');
  }

  Future<ResponseResult> toggleSubscription(int sunnahId) async {
    final sunnah = await _repository.getSunnah(sunnahId);

    if (sunnah == null) {
      return errorResponse('Sunnah not found', 'Try to seed the database.');
    }

    return sunnah.subscription != null
        ? await _unsubscribeSunnah(sunnah)
        : await _subscribeSunnah(sunnah);
  }

  Future<ResponseResult> seed() async {
    final existingSunnahs = await _repository.getAllSunnahs();

    await _addOrUpdateSunnahs();
    await _deleteUnlistedSunnahs(existingSunnahs);

    return successResponse(
      'Seeded Successfully',
      '${sunnahData.length} Sunnahs have been seeded successfully.',
    );
  }

  Stream<List<Sunnah>> listenSubscribedSunnahs({String? screenName}) {
    log(
      'Listening Subscribed Sunnahs ${screenName != null ? 'for $screenName' : ''}',
      name: 'SunnahService',
    );

    // * every time listenSubscribedSunnahs is called, recheck if any subscriptions need to be reset
    resetSubscriptions();

    return _repository.watchSubscribedSunnahs();
  }

  Stream<List<Sunnah>> listenSunnahsByCategory({
    required SunnahCategory category,
    String? screenName,
  }) {
    log(
      'Listening Sunnahs by Category ${category.name} ${screenName != null ? 'for $screenName' : ''}',
      name: 'SunnahService',
    );

    return _repository.watchSunnahsByCategory(category);
  }

  Future<ResponseResult> updateProgress({
    required int sunnahId,
    required ProgressMethod method,
  }) async {
    final sunnah = await _repository.getSunnah(sunnahId);

    if (sunnah == null) {
      return errorResponse('Sunnah not found', 'Try to seed the database.');
    }

    if (sunnah.subscription == null) {
      return errorResponse(
          'Sunnah not subscribed', 'Subscribe to the Sunnah first.');
    }

    return await _updateProgress(sunnah, method);
  }

  Future<ResponseResult> _subscribeSunnah(Sunnah sunnah) async {
    final subscription = SunnahSubscription()
      ..targetCompletionCount = sunnah.defaultTarget;

    sunnah.subscription = subscription;
    await _repository.putSunnah(sunnah);

    log('Subscribed to Sunnah: ${sunnah.title}', name: 'SunnahService');
    return successResponse(
      'Subscribed Successfully',
      'You have successfully subscribed to ${sunnah.title}.',
    );
  }

  Future<ResponseResult> _unsubscribeSunnah(Sunnah sunnah) async {
    sunnah.subscription = null;
    await _repository.putSunnah(sunnah);

    log('Unsubscribed from Sunnah: ${sunnah.title}', name: 'SunnahService');
    return successResponse(
      'Unsubscribed Successfully',
      'You have successfully unsubscribed from ${sunnah.title}.',
    );
  }

  Future<void> _addOrUpdateSunnahs() async {
    for (var sunnah in sunnahData) {
      final exists = await _repository.checkIfSunnahExists(sunnah.title);

      if (!exists) {
        await _repository.putSunnah(
          Sunnah()
            ..title = sunnah.title
            ..description = sunnah.description
            ..category = sunnah.category
            ..defaultTarget = sunnah.defaultTarget
            ..reference = sunnah.reference,
        );
        log('Seeded Sunnah: ${sunnah.title}', name: 'SunnahService');
      }
    }
  }

  Future<void> _deleteUnlistedSunnahs(List<Sunnah> existingSunnahs) async {
    for (var existingSunnah in existingSunnahs) {
      final stillExists =
          sunnahData.any((sunnah) => sunnah.title == existingSunnah.title);

      if (!stillExists) {
        await _repository.deleteSunnah(existingSunnah.id);
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

    await _repository.putSunnah(sunnah);

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

    await _repository.putSunnah(sunnah);

    return successResponse(
      'Progress Decremented',
      'Current progress: ${subscription.currentCompletionCount}/${subscription.targetCompletionCount}',
    );
  }

  Future<ResponseResult> _resetProgress(
      Sunnah sunnah, SunnahSubscription subscription) async {
    subscription.currentCompletionCount = 0;
    subscription.isCompleted = false;

    await _repository.putSunnah(sunnah);

    return successResponse(
      'Progress Reset',
      'Current progress: ${subscription.currentCompletionCount}/${subscription.targetCompletionCount}',
    );
  }

  Future<void> resetSubscriptions() async {
    final now = DateTime.now();

    final subscriptionsToReset = await _repository.getSubscriptionsToReset(now);

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

    sunnah.subscription!.resetAt = resetTime;
    await _repository.putSunnah(sunnah);
  }
}

enum ProgressMethod {
  increment,
  decrement,
  reset,
}
