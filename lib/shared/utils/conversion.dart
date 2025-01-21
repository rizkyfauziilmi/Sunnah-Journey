import 'package:flutter_counter/data/models/sunnah.dart';
import 'package:jiffy/jiffy.dart';

DateTime generateResetTime(ResetSchedule resetSchedule) {
  switch (resetSchedule) {
    case ResetSchedule.daily:
      return Jiffy.now().add(days: 1).startOf(Unit.day).dateTime;
    case ResetSchedule.weekly:
      return Jiffy.now().add(weeks: 1).startOf(Unit.week).dateTime;
    case ResetSchedule.monthly:
      return Jiffy.now().add(months: 1).startOf(Unit.month).dateTime;
    case ResetSchedule.yearly:
      return Jiffy.now().add(years: 1).startOf(Unit.year).dateTime;
  }
}
