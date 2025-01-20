import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:isar/isar.dart';

part 'setting.g.dart';

@collection
class Setting {
  Id id = Isar.autoIncrement;

  @Enumerated(EnumType.name)
  ThemeMode themeMode = ThemeMode.system;

  @Enumerated(EnumType.name)
  FlexScheme colorScheme = FlexScheme.material;
}
