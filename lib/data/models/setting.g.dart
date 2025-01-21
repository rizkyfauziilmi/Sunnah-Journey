// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'setting.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetSettingCollection on Isar {
  IsarCollection<Setting> get settings => this.collection();
}

const SettingSchema = CollectionSchema(
  name: r'Setting',
  id: 2542600759502230801,
  properties: {
    r'colorScheme': PropertySchema(
      id: 0,
      name: r'colorScheme',
      type: IsarType.string,
      enumMap: _SettingcolorSchemeEnumValueMap,
    ),
    r'themeMode': PropertySchema(
      id: 1,
      name: r'themeMode',
      type: IsarType.string,
      enumMap: _SettingthemeModeEnumValueMap,
    )
  },
  estimateSize: _settingEstimateSize,
  serialize: _settingSerialize,
  deserialize: _settingDeserialize,
  deserializeProp: _settingDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _settingGetId,
  getLinks: _settingGetLinks,
  attach: _settingAttach,
  version: '3.1.0+1',
);

int _settingEstimateSize(
  Setting object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.colorScheme.name.length * 3;
  bytesCount += 3 + object.themeMode.name.length * 3;
  return bytesCount;
}

void _settingSerialize(
  Setting object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.colorScheme.name);
  writer.writeString(offsets[1], object.themeMode.name);
}

Setting _settingDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Setting();
  object.colorScheme =
      _SettingcolorSchemeValueEnumMap[reader.readStringOrNull(offsets[0])] ??
          FlexScheme.material;
  object.id = id;
  object.themeMode =
      _SettingthemeModeValueEnumMap[reader.readStringOrNull(offsets[1])] ??
          ThemeMode.system;
  return object;
}

P _settingDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (_SettingcolorSchemeValueEnumMap[
              reader.readStringOrNull(offset)] ??
          FlexScheme.material) as P;
    case 1:
      return (_SettingthemeModeValueEnumMap[reader.readStringOrNull(offset)] ??
          ThemeMode.system) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _SettingcolorSchemeEnumValueMap = {
  r'material': r'material',
  r'materialHc': r'materialHc',
  r'blue': r'blue',
  r'indigo': r'indigo',
  r'hippieBlue': r'hippieBlue',
  r'aquaBlue': r'aquaBlue',
  r'brandBlue': r'brandBlue',
  r'deepBlue': r'deepBlue',
  r'sakura': r'sakura',
  r'mandyRed': r'mandyRed',
  r'red': r'red',
  r'redWine': r'redWine',
  r'purpleBrown': r'purpleBrown',
  r'green': r'green',
  r'money': r'money',
  r'jungle': r'jungle',
  r'greyLaw': r'greyLaw',
  r'wasabi': r'wasabi',
  r'gold': r'gold',
  r'mango': r'mango',
  r'amber': r'amber',
  r'vesuviusBurn': r'vesuviusBurn',
  r'deepPurple': r'deepPurple',
  r'ebonyClay': r'ebonyClay',
  r'barossa': r'barossa',
  r'shark': r'shark',
  r'bigStone': r'bigStone',
  r'damask': r'damask',
  r'bahamaBlue': r'bahamaBlue',
  r'mallardGreen': r'mallardGreen',
  r'espresso': r'espresso',
  r'outerSpace': r'outerSpace',
  r'blueWhale': r'blueWhale',
  r'sanJuanBlue': r'sanJuanBlue',
  r'rosewood': r'rosewood',
  r'blumineBlue': r'blumineBlue',
  r'flutterDash': r'flutterDash',
  r'materialBaseline': r'materialBaseline',
  r'verdunHemlock': r'verdunHemlock',
  r'dellGenoa': r'dellGenoa',
  r'redM3': r'redM3',
  r'pinkM3': r'pinkM3',
  r'purpleM3': r'purpleM3',
  r'indigoM3': r'indigoM3',
  r'blueM3': r'blueM3',
  r'cyanM3': r'cyanM3',
  r'tealM3': r'tealM3',
  r'greenM3': r'greenM3',
  r'limeM3': r'limeM3',
  r'yellowM3': r'yellowM3',
  r'orangeM3': r'orangeM3',
  r'deepOrangeM3': r'deepOrangeM3',
  r'blackWhite': r'blackWhite',
  r'greys': r'greys',
  r'sepia': r'sepia',
  r'custom': r'custom',
};
const _SettingcolorSchemeValueEnumMap = {
  r'material': FlexScheme.material,
  r'materialHc': FlexScheme.materialHc,
  r'blue': FlexScheme.blue,
  r'indigo': FlexScheme.indigo,
  r'hippieBlue': FlexScheme.hippieBlue,
  r'aquaBlue': FlexScheme.aquaBlue,
  r'brandBlue': FlexScheme.brandBlue,
  r'deepBlue': FlexScheme.deepBlue,
  r'sakura': FlexScheme.sakura,
  r'mandyRed': FlexScheme.mandyRed,
  r'red': FlexScheme.red,
  r'redWine': FlexScheme.redWine,
  r'purpleBrown': FlexScheme.purpleBrown,
  r'green': FlexScheme.green,
  r'money': FlexScheme.money,
  r'jungle': FlexScheme.jungle,
  r'greyLaw': FlexScheme.greyLaw,
  r'wasabi': FlexScheme.wasabi,
  r'gold': FlexScheme.gold,
  r'mango': FlexScheme.mango,
  r'amber': FlexScheme.amber,
  r'vesuviusBurn': FlexScheme.vesuviusBurn,
  r'deepPurple': FlexScheme.deepPurple,
  r'ebonyClay': FlexScheme.ebonyClay,
  r'barossa': FlexScheme.barossa,
  r'shark': FlexScheme.shark,
  r'bigStone': FlexScheme.bigStone,
  r'damask': FlexScheme.damask,
  r'bahamaBlue': FlexScheme.bahamaBlue,
  r'mallardGreen': FlexScheme.mallardGreen,
  r'espresso': FlexScheme.espresso,
  r'outerSpace': FlexScheme.outerSpace,
  r'blueWhale': FlexScheme.blueWhale,
  r'sanJuanBlue': FlexScheme.sanJuanBlue,
  r'rosewood': FlexScheme.rosewood,
  r'blumineBlue': FlexScheme.blumineBlue,
  r'flutterDash': FlexScheme.flutterDash,
  r'materialBaseline': FlexScheme.materialBaseline,
  r'verdunHemlock': FlexScheme.verdunHemlock,
  r'dellGenoa': FlexScheme.dellGenoa,
  r'redM3': FlexScheme.redM3,
  r'pinkM3': FlexScheme.pinkM3,
  r'purpleM3': FlexScheme.purpleM3,
  r'indigoM3': FlexScheme.indigoM3,
  r'blueM3': FlexScheme.blueM3,
  r'cyanM3': FlexScheme.cyanM3,
  r'tealM3': FlexScheme.tealM3,
  r'greenM3': FlexScheme.greenM3,
  r'limeM3': FlexScheme.limeM3,
  r'yellowM3': FlexScheme.yellowM3,
  r'orangeM3': FlexScheme.orangeM3,
  r'deepOrangeM3': FlexScheme.deepOrangeM3,
  r'blackWhite': FlexScheme.blackWhite,
  r'greys': FlexScheme.greys,
  r'sepia': FlexScheme.sepia,
  r'custom': FlexScheme.custom,
};
const _SettingthemeModeEnumValueMap = {
  r'system': r'system',
  r'light': r'light',
  r'dark': r'dark',
};
const _SettingthemeModeValueEnumMap = {
  r'system': ThemeMode.system,
  r'light': ThemeMode.light,
  r'dark': ThemeMode.dark,
};

Id _settingGetId(Setting object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _settingGetLinks(Setting object) {
  return [];
}

void _settingAttach(IsarCollection<dynamic> col, Id id, Setting object) {
  object.id = id;
}

extension SettingQueryWhereSort on QueryBuilder<Setting, Setting, QWhere> {
  QueryBuilder<Setting, Setting, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension SettingQueryWhere on QueryBuilder<Setting, Setting, QWhereClause> {
  QueryBuilder<Setting, Setting, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Setting, Setting, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<Setting, Setting, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Setting, Setting, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Setting, Setting, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension SettingQueryFilter
    on QueryBuilder<Setting, Setting, QFilterCondition> {
  QueryBuilder<Setting, Setting, QAfterFilterCondition> colorSchemeEqualTo(
    FlexScheme value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'colorScheme',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Setting, Setting, QAfterFilterCondition> colorSchemeGreaterThan(
    FlexScheme value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'colorScheme',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Setting, Setting, QAfterFilterCondition> colorSchemeLessThan(
    FlexScheme value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'colorScheme',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Setting, Setting, QAfterFilterCondition> colorSchemeBetween(
    FlexScheme lower,
    FlexScheme upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'colorScheme',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Setting, Setting, QAfterFilterCondition> colorSchemeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'colorScheme',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Setting, Setting, QAfterFilterCondition> colorSchemeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'colorScheme',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Setting, Setting, QAfterFilterCondition> colorSchemeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'colorScheme',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Setting, Setting, QAfterFilterCondition> colorSchemeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'colorScheme',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Setting, Setting, QAfterFilterCondition> colorSchemeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'colorScheme',
        value: '',
      ));
    });
  }

  QueryBuilder<Setting, Setting, QAfterFilterCondition>
      colorSchemeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'colorScheme',
        value: '',
      ));
    });
  }

  QueryBuilder<Setting, Setting, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Setting, Setting, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Setting, Setting, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Setting, Setting, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Setting, Setting, QAfterFilterCondition> themeModeEqualTo(
    ThemeMode value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'themeMode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Setting, Setting, QAfterFilterCondition> themeModeGreaterThan(
    ThemeMode value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'themeMode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Setting, Setting, QAfterFilterCondition> themeModeLessThan(
    ThemeMode value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'themeMode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Setting, Setting, QAfterFilterCondition> themeModeBetween(
    ThemeMode lower,
    ThemeMode upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'themeMode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Setting, Setting, QAfterFilterCondition> themeModeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'themeMode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Setting, Setting, QAfterFilterCondition> themeModeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'themeMode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Setting, Setting, QAfterFilterCondition> themeModeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'themeMode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Setting, Setting, QAfterFilterCondition> themeModeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'themeMode',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Setting, Setting, QAfterFilterCondition> themeModeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'themeMode',
        value: '',
      ));
    });
  }

  QueryBuilder<Setting, Setting, QAfterFilterCondition> themeModeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'themeMode',
        value: '',
      ));
    });
  }
}

extension SettingQueryObject
    on QueryBuilder<Setting, Setting, QFilterCondition> {}

extension SettingQueryLinks
    on QueryBuilder<Setting, Setting, QFilterCondition> {}

extension SettingQuerySortBy on QueryBuilder<Setting, Setting, QSortBy> {
  QueryBuilder<Setting, Setting, QAfterSortBy> sortByColorScheme() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'colorScheme', Sort.asc);
    });
  }

  QueryBuilder<Setting, Setting, QAfterSortBy> sortByColorSchemeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'colorScheme', Sort.desc);
    });
  }

  QueryBuilder<Setting, Setting, QAfterSortBy> sortByThemeMode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'themeMode', Sort.asc);
    });
  }

  QueryBuilder<Setting, Setting, QAfterSortBy> sortByThemeModeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'themeMode', Sort.desc);
    });
  }
}

extension SettingQuerySortThenBy
    on QueryBuilder<Setting, Setting, QSortThenBy> {
  QueryBuilder<Setting, Setting, QAfterSortBy> thenByColorScheme() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'colorScheme', Sort.asc);
    });
  }

  QueryBuilder<Setting, Setting, QAfterSortBy> thenByColorSchemeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'colorScheme', Sort.desc);
    });
  }

  QueryBuilder<Setting, Setting, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Setting, Setting, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Setting, Setting, QAfterSortBy> thenByThemeMode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'themeMode', Sort.asc);
    });
  }

  QueryBuilder<Setting, Setting, QAfterSortBy> thenByThemeModeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'themeMode', Sort.desc);
    });
  }
}

extension SettingQueryWhereDistinct
    on QueryBuilder<Setting, Setting, QDistinct> {
  QueryBuilder<Setting, Setting, QDistinct> distinctByColorScheme(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'colorScheme', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Setting, Setting, QDistinct> distinctByThemeMode(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'themeMode', caseSensitive: caseSensitive);
    });
  }
}

extension SettingQueryProperty
    on QueryBuilder<Setting, Setting, QQueryProperty> {
  QueryBuilder<Setting, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Setting, FlexScheme, QQueryOperations> colorSchemeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'colorScheme');
    });
  }

  QueryBuilder<Setting, ThemeMode, QQueryOperations> themeModeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'themeMode');
    });
  }
}
