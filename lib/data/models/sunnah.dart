import 'package:isar/isar.dart';
import 'package:jiffy/jiffy.dart';

part 'sunnah.g.dart';

@collection
class Sunnah {
  Id id = Isar.autoIncrement;

  late String title;

  late String description;

  late String reference;

  @Enumerated(EnumType.name)
  late SunnahCategory category;

  late int defaultTarget;

  SunnahSubscription? subscription;

  static fromMap(Map<String, Object> sunnahData) {}
}

@Embedded()
class SunnahSubscription {
  bool isCompleted = false;

  int currentCompletionCount = 0;
  int targetCompletionCount = 5;
  int completionCount = 0;

  @Enumerated(EnumType.name)
  ResetSchedule resetSchedule = ResetSchedule.daily;

  // today midnight
  DateTime resetAt = Jiffy.now().endOf(Unit.day).dateTime;
  DateTime subscribedAt = DateTime.now();
}

enum ResetSchedule { daily, weekly, monthly, yearly }

enum SunnahCategory {
  worship,
  etiquette,
  dailylife,
  family,
  health,
  dealings,
  social,
}
