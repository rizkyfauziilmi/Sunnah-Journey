// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sunnah.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetSunnahCollection on Isar {
  IsarCollection<Sunnah> get sunnahs => this.collection();
}

const SunnahSchema = CollectionSchema(
  name: r'Sunnah',
  id: 1081535296773174703,
  properties: {
    r'category': PropertySchema(
      id: 0,
      name: r'category',
      type: IsarType.string,
      enumMap: _SunnahcategoryEnumValueMap,
    ),
    r'defaultTarget': PropertySchema(
      id: 1,
      name: r'defaultTarget',
      type: IsarType.long,
    ),
    r'description': PropertySchema(
      id: 2,
      name: r'description',
      type: IsarType.string,
    ),
    r'reference': PropertySchema(
      id: 3,
      name: r'reference',
      type: IsarType.string,
    ),
    r'subscription': PropertySchema(
      id: 4,
      name: r'subscription',
      type: IsarType.object,
      target: r'SunnahSubscription',
    ),
    r'title': PropertySchema(
      id: 5,
      name: r'title',
      type: IsarType.string,
    )
  },
  estimateSize: _sunnahEstimateSize,
  serialize: _sunnahSerialize,
  deserialize: _sunnahDeserialize,
  deserializeProp: _sunnahDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {r'SunnahSubscription': SunnahSubscriptionSchema},
  getId: _sunnahGetId,
  getLinks: _sunnahGetLinks,
  attach: _sunnahAttach,
  version: '3.1.0+1',
);

int _sunnahEstimateSize(
  Sunnah object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.category.name.length * 3;
  bytesCount += 3 + object.description.length * 3;
  bytesCount += 3 + object.reference.length * 3;
  {
    final value = object.subscription;
    if (value != null) {
      bytesCount += 3 +
          SunnahSubscriptionSchema.estimateSize(
              value, allOffsets[SunnahSubscription]!, allOffsets);
    }
  }
  bytesCount += 3 + object.title.length * 3;
  return bytesCount;
}

void _sunnahSerialize(
  Sunnah object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.category.name);
  writer.writeLong(offsets[1], object.defaultTarget);
  writer.writeString(offsets[2], object.description);
  writer.writeString(offsets[3], object.reference);
  writer.writeObject<SunnahSubscription>(
    offsets[4],
    allOffsets,
    SunnahSubscriptionSchema.serialize,
    object.subscription,
  );
  writer.writeString(offsets[5], object.title);
}

Sunnah _sunnahDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Sunnah();
  object.category =
      _SunnahcategoryValueEnumMap[reader.readStringOrNull(offsets[0])] ??
          SunnahCategory.worship;
  object.defaultTarget = reader.readLong(offsets[1]);
  object.description = reader.readString(offsets[2]);
  object.id = id;
  object.reference = reader.readString(offsets[3]);
  object.subscription = reader.readObjectOrNull<SunnahSubscription>(
    offsets[4],
    SunnahSubscriptionSchema.deserialize,
    allOffsets,
  );
  object.title = reader.readString(offsets[5]);
  return object;
}

P _sunnahDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (_SunnahcategoryValueEnumMap[reader.readStringOrNull(offset)] ??
          SunnahCategory.worship) as P;
    case 1:
      return (reader.readLong(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readObjectOrNull<SunnahSubscription>(
        offset,
        SunnahSubscriptionSchema.deserialize,
        allOffsets,
      )) as P;
    case 5:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _SunnahcategoryEnumValueMap = {
  r'worship': r'worship',
  r'etiquette': r'etiquette',
  r'dailylife': r'dailylife',
  r'family': r'family',
  r'health': r'health',
  r'dealings': r'dealings',
  r'social': r'social',
};
const _SunnahcategoryValueEnumMap = {
  r'worship': SunnahCategory.worship,
  r'etiquette': SunnahCategory.etiquette,
  r'dailylife': SunnahCategory.dailylife,
  r'family': SunnahCategory.family,
  r'health': SunnahCategory.health,
  r'dealings': SunnahCategory.dealings,
  r'social': SunnahCategory.social,
};

Id _sunnahGetId(Sunnah object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _sunnahGetLinks(Sunnah object) {
  return [];
}

void _sunnahAttach(IsarCollection<dynamic> col, Id id, Sunnah object) {
  object.id = id;
}

extension SunnahQueryWhereSort on QueryBuilder<Sunnah, Sunnah, QWhere> {
  QueryBuilder<Sunnah, Sunnah, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension SunnahQueryWhere on QueryBuilder<Sunnah, Sunnah, QWhereClause> {
  QueryBuilder<Sunnah, Sunnah, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Sunnah, Sunnah, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<Sunnah, Sunnah, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Sunnah, Sunnah, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Sunnah, Sunnah, QAfterWhereClause> idBetween(
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

extension SunnahQueryFilter on QueryBuilder<Sunnah, Sunnah, QFilterCondition> {
  QueryBuilder<Sunnah, Sunnah, QAfterFilterCondition> categoryEqualTo(
    SunnahCategory value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'category',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sunnah, Sunnah, QAfterFilterCondition> categoryGreaterThan(
    SunnahCategory value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'category',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sunnah, Sunnah, QAfterFilterCondition> categoryLessThan(
    SunnahCategory value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'category',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sunnah, Sunnah, QAfterFilterCondition> categoryBetween(
    SunnahCategory lower,
    SunnahCategory upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'category',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sunnah, Sunnah, QAfterFilterCondition> categoryStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'category',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sunnah, Sunnah, QAfterFilterCondition> categoryEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'category',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sunnah, Sunnah, QAfterFilterCondition> categoryContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'category',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sunnah, Sunnah, QAfterFilterCondition> categoryMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'category',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sunnah, Sunnah, QAfterFilterCondition> categoryIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'category',
        value: '',
      ));
    });
  }

  QueryBuilder<Sunnah, Sunnah, QAfterFilterCondition> categoryIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'category',
        value: '',
      ));
    });
  }

  QueryBuilder<Sunnah, Sunnah, QAfterFilterCondition> defaultTargetEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'defaultTarget',
        value: value,
      ));
    });
  }

  QueryBuilder<Sunnah, Sunnah, QAfterFilterCondition> defaultTargetGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'defaultTarget',
        value: value,
      ));
    });
  }

  QueryBuilder<Sunnah, Sunnah, QAfterFilterCondition> defaultTargetLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'defaultTarget',
        value: value,
      ));
    });
  }

  QueryBuilder<Sunnah, Sunnah, QAfterFilterCondition> defaultTargetBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'defaultTarget',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Sunnah, Sunnah, QAfterFilterCondition> descriptionEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sunnah, Sunnah, QAfterFilterCondition> descriptionGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sunnah, Sunnah, QAfterFilterCondition> descriptionLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sunnah, Sunnah, QAfterFilterCondition> descriptionBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'description',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sunnah, Sunnah, QAfterFilterCondition> descriptionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sunnah, Sunnah, QAfterFilterCondition> descriptionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sunnah, Sunnah, QAfterFilterCondition> descriptionContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sunnah, Sunnah, QAfterFilterCondition> descriptionMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'description',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sunnah, Sunnah, QAfterFilterCondition> descriptionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<Sunnah, Sunnah, QAfterFilterCondition> descriptionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<Sunnah, Sunnah, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Sunnah, Sunnah, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Sunnah, Sunnah, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Sunnah, Sunnah, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Sunnah, Sunnah, QAfterFilterCondition> referenceEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'reference',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sunnah, Sunnah, QAfterFilterCondition> referenceGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'reference',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sunnah, Sunnah, QAfterFilterCondition> referenceLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'reference',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sunnah, Sunnah, QAfterFilterCondition> referenceBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'reference',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sunnah, Sunnah, QAfterFilterCondition> referenceStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'reference',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sunnah, Sunnah, QAfterFilterCondition> referenceEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'reference',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sunnah, Sunnah, QAfterFilterCondition> referenceContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'reference',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sunnah, Sunnah, QAfterFilterCondition> referenceMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'reference',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sunnah, Sunnah, QAfterFilterCondition> referenceIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'reference',
        value: '',
      ));
    });
  }

  QueryBuilder<Sunnah, Sunnah, QAfterFilterCondition> referenceIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'reference',
        value: '',
      ));
    });
  }

  QueryBuilder<Sunnah, Sunnah, QAfterFilterCondition> subscriptionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'subscription',
      ));
    });
  }

  QueryBuilder<Sunnah, Sunnah, QAfterFilterCondition> subscriptionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'subscription',
      ));
    });
  }

  QueryBuilder<Sunnah, Sunnah, QAfterFilterCondition> titleEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sunnah, Sunnah, QAfterFilterCondition> titleGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sunnah, Sunnah, QAfterFilterCondition> titleLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sunnah, Sunnah, QAfterFilterCondition> titleBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'title',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sunnah, Sunnah, QAfterFilterCondition> titleStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sunnah, Sunnah, QAfterFilterCondition> titleEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sunnah, Sunnah, QAfterFilterCondition> titleContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sunnah, Sunnah, QAfterFilterCondition> titleMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'title',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sunnah, Sunnah, QAfterFilterCondition> titleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'title',
        value: '',
      ));
    });
  }

  QueryBuilder<Sunnah, Sunnah, QAfterFilterCondition> titleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'title',
        value: '',
      ));
    });
  }
}

extension SunnahQueryObject on QueryBuilder<Sunnah, Sunnah, QFilterCondition> {
  QueryBuilder<Sunnah, Sunnah, QAfterFilterCondition> subscription(
      FilterQuery<SunnahSubscription> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'subscription');
    });
  }
}

extension SunnahQueryLinks on QueryBuilder<Sunnah, Sunnah, QFilterCondition> {}

extension SunnahQuerySortBy on QueryBuilder<Sunnah, Sunnah, QSortBy> {
  QueryBuilder<Sunnah, Sunnah, QAfterSortBy> sortByCategory() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'category', Sort.asc);
    });
  }

  QueryBuilder<Sunnah, Sunnah, QAfterSortBy> sortByCategoryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'category', Sort.desc);
    });
  }

  QueryBuilder<Sunnah, Sunnah, QAfterSortBy> sortByDefaultTarget() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'defaultTarget', Sort.asc);
    });
  }

  QueryBuilder<Sunnah, Sunnah, QAfterSortBy> sortByDefaultTargetDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'defaultTarget', Sort.desc);
    });
  }

  QueryBuilder<Sunnah, Sunnah, QAfterSortBy> sortByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<Sunnah, Sunnah, QAfterSortBy> sortByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
    });
  }

  QueryBuilder<Sunnah, Sunnah, QAfterSortBy> sortByReference() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'reference', Sort.asc);
    });
  }

  QueryBuilder<Sunnah, Sunnah, QAfterSortBy> sortByReferenceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'reference', Sort.desc);
    });
  }

  QueryBuilder<Sunnah, Sunnah, QAfterSortBy> sortByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.asc);
    });
  }

  QueryBuilder<Sunnah, Sunnah, QAfterSortBy> sortByTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.desc);
    });
  }
}

extension SunnahQuerySortThenBy on QueryBuilder<Sunnah, Sunnah, QSortThenBy> {
  QueryBuilder<Sunnah, Sunnah, QAfterSortBy> thenByCategory() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'category', Sort.asc);
    });
  }

  QueryBuilder<Sunnah, Sunnah, QAfterSortBy> thenByCategoryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'category', Sort.desc);
    });
  }

  QueryBuilder<Sunnah, Sunnah, QAfterSortBy> thenByDefaultTarget() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'defaultTarget', Sort.asc);
    });
  }

  QueryBuilder<Sunnah, Sunnah, QAfterSortBy> thenByDefaultTargetDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'defaultTarget', Sort.desc);
    });
  }

  QueryBuilder<Sunnah, Sunnah, QAfterSortBy> thenByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<Sunnah, Sunnah, QAfterSortBy> thenByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
    });
  }

  QueryBuilder<Sunnah, Sunnah, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Sunnah, Sunnah, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Sunnah, Sunnah, QAfterSortBy> thenByReference() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'reference', Sort.asc);
    });
  }

  QueryBuilder<Sunnah, Sunnah, QAfterSortBy> thenByReferenceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'reference', Sort.desc);
    });
  }

  QueryBuilder<Sunnah, Sunnah, QAfterSortBy> thenByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.asc);
    });
  }

  QueryBuilder<Sunnah, Sunnah, QAfterSortBy> thenByTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.desc);
    });
  }
}

extension SunnahQueryWhereDistinct on QueryBuilder<Sunnah, Sunnah, QDistinct> {
  QueryBuilder<Sunnah, Sunnah, QDistinct> distinctByCategory(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'category', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Sunnah, Sunnah, QDistinct> distinctByDefaultTarget() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'defaultTarget');
    });
  }

  QueryBuilder<Sunnah, Sunnah, QDistinct> distinctByDescription(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'description', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Sunnah, Sunnah, QDistinct> distinctByReference(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'reference', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Sunnah, Sunnah, QDistinct> distinctByTitle(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'title', caseSensitive: caseSensitive);
    });
  }
}

extension SunnahQueryProperty on QueryBuilder<Sunnah, Sunnah, QQueryProperty> {
  QueryBuilder<Sunnah, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Sunnah, SunnahCategory, QQueryOperations> categoryProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'category');
    });
  }

  QueryBuilder<Sunnah, int, QQueryOperations> defaultTargetProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'defaultTarget');
    });
  }

  QueryBuilder<Sunnah, String, QQueryOperations> descriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'description');
    });
  }

  QueryBuilder<Sunnah, String, QQueryOperations> referenceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'reference');
    });
  }

  QueryBuilder<Sunnah, SunnahSubscription?, QQueryOperations>
      subscriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'subscription');
    });
  }

  QueryBuilder<Sunnah, String, QQueryOperations> titleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'title');
    });
  }
}

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const SunnahSubscriptionSchema = Schema(
  name: r'SunnahSubscription',
  id: 7004670744034857962,
  properties: {
    r'completionCount': PropertySchema(
      id: 0,
      name: r'completionCount',
      type: IsarType.long,
    ),
    r'currentCompletionCount': PropertySchema(
      id: 1,
      name: r'currentCompletionCount',
      type: IsarType.long,
    ),
    r'isCompleted': PropertySchema(
      id: 2,
      name: r'isCompleted',
      type: IsarType.bool,
    ),
    r'resetAt': PropertySchema(
      id: 3,
      name: r'resetAt',
      type: IsarType.dateTime,
    ),
    r'resetSchedule': PropertySchema(
      id: 4,
      name: r'resetSchedule',
      type: IsarType.string,
      enumMap: _SunnahSubscriptionresetScheduleEnumValueMap,
    ),
    r'subscribedAt': PropertySchema(
      id: 5,
      name: r'subscribedAt',
      type: IsarType.dateTime,
    ),
    r'targetCompletionCount': PropertySchema(
      id: 6,
      name: r'targetCompletionCount',
      type: IsarType.long,
    )
  },
  estimateSize: _sunnahSubscriptionEstimateSize,
  serialize: _sunnahSubscriptionSerialize,
  deserialize: _sunnahSubscriptionDeserialize,
  deserializeProp: _sunnahSubscriptionDeserializeProp,
);

int _sunnahSubscriptionEstimateSize(
  SunnahSubscription object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.resetSchedule.name.length * 3;
  return bytesCount;
}

void _sunnahSubscriptionSerialize(
  SunnahSubscription object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.completionCount);
  writer.writeLong(offsets[1], object.currentCompletionCount);
  writer.writeBool(offsets[2], object.isCompleted);
  writer.writeDateTime(offsets[3], object.resetAt);
  writer.writeString(offsets[4], object.resetSchedule.name);
  writer.writeDateTime(offsets[5], object.subscribedAt);
  writer.writeLong(offsets[6], object.targetCompletionCount);
}

SunnahSubscription _sunnahSubscriptionDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = SunnahSubscription();
  object.completionCount = reader.readLong(offsets[0]);
  object.currentCompletionCount = reader.readLong(offsets[1]);
  object.isCompleted = reader.readBool(offsets[2]);
  object.resetAt = reader.readDateTime(offsets[3]);
  object.resetSchedule = _SunnahSubscriptionresetScheduleValueEnumMap[
          reader.readStringOrNull(offsets[4])] ??
      ResetSchedule.daily;
  object.subscribedAt = reader.readDateTime(offsets[5]);
  object.targetCompletionCount = reader.readLong(offsets[6]);
  return object;
}

P _sunnahSubscriptionDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLong(offset)) as P;
    case 1:
      return (reader.readLong(offset)) as P;
    case 2:
      return (reader.readBool(offset)) as P;
    case 3:
      return (reader.readDateTime(offset)) as P;
    case 4:
      return (_SunnahSubscriptionresetScheduleValueEnumMap[
              reader.readStringOrNull(offset)] ??
          ResetSchedule.daily) as P;
    case 5:
      return (reader.readDateTime(offset)) as P;
    case 6:
      return (reader.readLong(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _SunnahSubscriptionresetScheduleEnumValueMap = {
  r'daily': r'daily',
  r'weekly': r'weekly',
  r'monthly': r'monthly',
  r'yearly': r'yearly',
};
const _SunnahSubscriptionresetScheduleValueEnumMap = {
  r'daily': ResetSchedule.daily,
  r'weekly': ResetSchedule.weekly,
  r'monthly': ResetSchedule.monthly,
  r'yearly': ResetSchedule.yearly,
};

extension SunnahSubscriptionQueryFilter
    on QueryBuilder<SunnahSubscription, SunnahSubscription, QFilterCondition> {
  QueryBuilder<SunnahSubscription, SunnahSubscription, QAfterFilterCondition>
      completionCountEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'completionCount',
        value: value,
      ));
    });
  }

  QueryBuilder<SunnahSubscription, SunnahSubscription, QAfterFilterCondition>
      completionCountGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'completionCount',
        value: value,
      ));
    });
  }

  QueryBuilder<SunnahSubscription, SunnahSubscription, QAfterFilterCondition>
      completionCountLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'completionCount',
        value: value,
      ));
    });
  }

  QueryBuilder<SunnahSubscription, SunnahSubscription, QAfterFilterCondition>
      completionCountBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'completionCount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<SunnahSubscription, SunnahSubscription, QAfterFilterCondition>
      currentCompletionCountEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'currentCompletionCount',
        value: value,
      ));
    });
  }

  QueryBuilder<SunnahSubscription, SunnahSubscription, QAfterFilterCondition>
      currentCompletionCountGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'currentCompletionCount',
        value: value,
      ));
    });
  }

  QueryBuilder<SunnahSubscription, SunnahSubscription, QAfterFilterCondition>
      currentCompletionCountLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'currentCompletionCount',
        value: value,
      ));
    });
  }

  QueryBuilder<SunnahSubscription, SunnahSubscription, QAfterFilterCondition>
      currentCompletionCountBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'currentCompletionCount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<SunnahSubscription, SunnahSubscription, QAfterFilterCondition>
      isCompletedEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isCompleted',
        value: value,
      ));
    });
  }

  QueryBuilder<SunnahSubscription, SunnahSubscription, QAfterFilterCondition>
      resetAtEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'resetAt',
        value: value,
      ));
    });
  }

  QueryBuilder<SunnahSubscription, SunnahSubscription, QAfterFilterCondition>
      resetAtGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'resetAt',
        value: value,
      ));
    });
  }

  QueryBuilder<SunnahSubscription, SunnahSubscription, QAfterFilterCondition>
      resetAtLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'resetAt',
        value: value,
      ));
    });
  }

  QueryBuilder<SunnahSubscription, SunnahSubscription, QAfterFilterCondition>
      resetAtBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'resetAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<SunnahSubscription, SunnahSubscription, QAfterFilterCondition>
      resetScheduleEqualTo(
    ResetSchedule value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'resetSchedule',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SunnahSubscription, SunnahSubscription, QAfterFilterCondition>
      resetScheduleGreaterThan(
    ResetSchedule value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'resetSchedule',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SunnahSubscription, SunnahSubscription, QAfterFilterCondition>
      resetScheduleLessThan(
    ResetSchedule value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'resetSchedule',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SunnahSubscription, SunnahSubscription, QAfterFilterCondition>
      resetScheduleBetween(
    ResetSchedule lower,
    ResetSchedule upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'resetSchedule',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SunnahSubscription, SunnahSubscription, QAfterFilterCondition>
      resetScheduleStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'resetSchedule',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SunnahSubscription, SunnahSubscription, QAfterFilterCondition>
      resetScheduleEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'resetSchedule',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SunnahSubscription, SunnahSubscription, QAfterFilterCondition>
      resetScheduleContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'resetSchedule',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SunnahSubscription, SunnahSubscription, QAfterFilterCondition>
      resetScheduleMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'resetSchedule',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SunnahSubscription, SunnahSubscription, QAfterFilterCondition>
      resetScheduleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'resetSchedule',
        value: '',
      ));
    });
  }

  QueryBuilder<SunnahSubscription, SunnahSubscription, QAfterFilterCondition>
      resetScheduleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'resetSchedule',
        value: '',
      ));
    });
  }

  QueryBuilder<SunnahSubscription, SunnahSubscription, QAfterFilterCondition>
      subscribedAtEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'subscribedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<SunnahSubscription, SunnahSubscription, QAfterFilterCondition>
      subscribedAtGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'subscribedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<SunnahSubscription, SunnahSubscription, QAfterFilterCondition>
      subscribedAtLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'subscribedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<SunnahSubscription, SunnahSubscription, QAfterFilterCondition>
      subscribedAtBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'subscribedAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<SunnahSubscription, SunnahSubscription, QAfterFilterCondition>
      targetCompletionCountEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'targetCompletionCount',
        value: value,
      ));
    });
  }

  QueryBuilder<SunnahSubscription, SunnahSubscription, QAfterFilterCondition>
      targetCompletionCountGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'targetCompletionCount',
        value: value,
      ));
    });
  }

  QueryBuilder<SunnahSubscription, SunnahSubscription, QAfterFilterCondition>
      targetCompletionCountLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'targetCompletionCount',
        value: value,
      ));
    });
  }

  QueryBuilder<SunnahSubscription, SunnahSubscription, QAfterFilterCondition>
      targetCompletionCountBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'targetCompletionCount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension SunnahSubscriptionQueryObject
    on QueryBuilder<SunnahSubscription, SunnahSubscription, QFilterCondition> {}
