// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recent_word.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetRecentWordsEntityCollection on Isar {
  IsarCollection<RecentWordsEntity> get recentWordsEntitys => this.collection();
}

const RecentWordsEntitySchema = CollectionSchema(
  name: r'RecentWordsEntity',
  id: 7470081406845447189,
  properties: {
    r'origin': PropertySchema(
      id: 0,
      name: r'origin',
      type: IsarType.string,
    ),
    r'phonetic': PropertySchema(
      id: 1,
      name: r'phonetic',
      type: IsarType.string,
    ),
    r'word': PropertySchema(
      id: 2,
      name: r'word',
      type: IsarType.string,
    )
  },
  estimateSize: _recentWordsEntityEstimateSize,
  serialize: _recentWordsEntitySerialize,
  deserialize: _recentWordsEntityDeserialize,
  deserializeProp: _recentWordsEntityDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {
    r'phonetiss': LinkSchema(
      id: -598697404539109397,
      name: r'phonetiss',
      target: r'PhoneticEntity',
      single: false,
    ),
    r'meanings': LinkSchema(
      id: -2437495357268836128,
      name: r'meanings',
      target: r'MeaningEntity',
      single: false,
    )
  },
  embeddedSchemas: {},
  getId: _recentWordsEntityGetId,
  getLinks: _recentWordsEntityGetLinks,
  attach: _recentWordsEntityAttach,
  version: '3.1.0+1',
);

int _recentWordsEntityEstimateSize(
  RecentWordsEntity object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.origin;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.phonetic;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.word;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _recentWordsEntitySerialize(
  RecentWordsEntity object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.origin);
  writer.writeString(offsets[1], object.phonetic);
  writer.writeString(offsets[2], object.word);
}

RecentWordsEntity _recentWordsEntityDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = RecentWordsEntity();
  object.id = id;
  object.origin = reader.readStringOrNull(offsets[0]);
  object.phonetic = reader.readStringOrNull(offsets[1]);
  object.word = reader.readStringOrNull(offsets[2]);
  return object;
}

P _recentWordsEntityDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _recentWordsEntityGetId(RecentWordsEntity object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _recentWordsEntityGetLinks(
    RecentWordsEntity object) {
  return [object.phonetiss, object.meanings];
}

void _recentWordsEntityAttach(
    IsarCollection<dynamic> col, Id id, RecentWordsEntity object) {
  object.id = id;
  object.phonetiss
      .attach(col, col.isar.collection<PhoneticEntity>(), r'phonetiss', id);
  object.meanings
      .attach(col, col.isar.collection<MeaningEntity>(), r'meanings', id);
}

extension RecentWordsEntityQueryWhereSort
    on QueryBuilder<RecentWordsEntity, RecentWordsEntity, QWhere> {
  QueryBuilder<RecentWordsEntity, RecentWordsEntity, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension RecentWordsEntityQueryWhere
    on QueryBuilder<RecentWordsEntity, RecentWordsEntity, QWhereClause> {
  QueryBuilder<RecentWordsEntity, RecentWordsEntity, QAfterWhereClause>
      idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<RecentWordsEntity, RecentWordsEntity, QAfterWhereClause>
      idNotEqualTo(Id id) {
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

  QueryBuilder<RecentWordsEntity, RecentWordsEntity, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<RecentWordsEntity, RecentWordsEntity, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<RecentWordsEntity, RecentWordsEntity, QAfterWhereClause>
      idBetween(
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

extension RecentWordsEntityQueryFilter
    on QueryBuilder<RecentWordsEntity, RecentWordsEntity, QFilterCondition> {
  QueryBuilder<RecentWordsEntity, RecentWordsEntity, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<RecentWordsEntity, RecentWordsEntity, QAfterFilterCondition>
      idGreaterThan(
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

  QueryBuilder<RecentWordsEntity, RecentWordsEntity, QAfterFilterCondition>
      idLessThan(
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

  QueryBuilder<RecentWordsEntity, RecentWordsEntity, QAfterFilterCondition>
      idBetween(
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

  QueryBuilder<RecentWordsEntity, RecentWordsEntity, QAfterFilterCondition>
      originIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'origin',
      ));
    });
  }

  QueryBuilder<RecentWordsEntity, RecentWordsEntity, QAfterFilterCondition>
      originIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'origin',
      ));
    });
  }

  QueryBuilder<RecentWordsEntity, RecentWordsEntity, QAfterFilterCondition>
      originEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'origin',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecentWordsEntity, RecentWordsEntity, QAfterFilterCondition>
      originGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'origin',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecentWordsEntity, RecentWordsEntity, QAfterFilterCondition>
      originLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'origin',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecentWordsEntity, RecentWordsEntity, QAfterFilterCondition>
      originBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'origin',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecentWordsEntity, RecentWordsEntity, QAfterFilterCondition>
      originStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'origin',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecentWordsEntity, RecentWordsEntity, QAfterFilterCondition>
      originEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'origin',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecentWordsEntity, RecentWordsEntity, QAfterFilterCondition>
      originContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'origin',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecentWordsEntity, RecentWordsEntity, QAfterFilterCondition>
      originMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'origin',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecentWordsEntity, RecentWordsEntity, QAfterFilterCondition>
      originIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'origin',
        value: '',
      ));
    });
  }

  QueryBuilder<RecentWordsEntity, RecentWordsEntity, QAfterFilterCondition>
      originIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'origin',
        value: '',
      ));
    });
  }

  QueryBuilder<RecentWordsEntity, RecentWordsEntity, QAfterFilterCondition>
      phoneticIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'phonetic',
      ));
    });
  }

  QueryBuilder<RecentWordsEntity, RecentWordsEntity, QAfterFilterCondition>
      phoneticIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'phonetic',
      ));
    });
  }

  QueryBuilder<RecentWordsEntity, RecentWordsEntity, QAfterFilterCondition>
      phoneticEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'phonetic',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecentWordsEntity, RecentWordsEntity, QAfterFilterCondition>
      phoneticGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'phonetic',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecentWordsEntity, RecentWordsEntity, QAfterFilterCondition>
      phoneticLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'phonetic',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecentWordsEntity, RecentWordsEntity, QAfterFilterCondition>
      phoneticBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'phonetic',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecentWordsEntity, RecentWordsEntity, QAfterFilterCondition>
      phoneticStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'phonetic',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecentWordsEntity, RecentWordsEntity, QAfterFilterCondition>
      phoneticEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'phonetic',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecentWordsEntity, RecentWordsEntity, QAfterFilterCondition>
      phoneticContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'phonetic',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecentWordsEntity, RecentWordsEntity, QAfterFilterCondition>
      phoneticMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'phonetic',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecentWordsEntity, RecentWordsEntity, QAfterFilterCondition>
      phoneticIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'phonetic',
        value: '',
      ));
    });
  }

  QueryBuilder<RecentWordsEntity, RecentWordsEntity, QAfterFilterCondition>
      phoneticIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'phonetic',
        value: '',
      ));
    });
  }

  QueryBuilder<RecentWordsEntity, RecentWordsEntity, QAfterFilterCondition>
      wordIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'word',
      ));
    });
  }

  QueryBuilder<RecentWordsEntity, RecentWordsEntity, QAfterFilterCondition>
      wordIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'word',
      ));
    });
  }

  QueryBuilder<RecentWordsEntity, RecentWordsEntity, QAfterFilterCondition>
      wordEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'word',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecentWordsEntity, RecentWordsEntity, QAfterFilterCondition>
      wordGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'word',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecentWordsEntity, RecentWordsEntity, QAfterFilterCondition>
      wordLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'word',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecentWordsEntity, RecentWordsEntity, QAfterFilterCondition>
      wordBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'word',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecentWordsEntity, RecentWordsEntity, QAfterFilterCondition>
      wordStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'word',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecentWordsEntity, RecentWordsEntity, QAfterFilterCondition>
      wordEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'word',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecentWordsEntity, RecentWordsEntity, QAfterFilterCondition>
      wordContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'word',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecentWordsEntity, RecentWordsEntity, QAfterFilterCondition>
      wordMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'word',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecentWordsEntity, RecentWordsEntity, QAfterFilterCondition>
      wordIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'word',
        value: '',
      ));
    });
  }

  QueryBuilder<RecentWordsEntity, RecentWordsEntity, QAfterFilterCondition>
      wordIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'word',
        value: '',
      ));
    });
  }
}

extension RecentWordsEntityQueryObject
    on QueryBuilder<RecentWordsEntity, RecentWordsEntity, QFilterCondition> {}

extension RecentWordsEntityQueryLinks
    on QueryBuilder<RecentWordsEntity, RecentWordsEntity, QFilterCondition> {
  QueryBuilder<RecentWordsEntity, RecentWordsEntity, QAfterFilterCondition>
      phonetiss(FilterQuery<PhoneticEntity> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'phonetiss');
    });
  }

  QueryBuilder<RecentWordsEntity, RecentWordsEntity, QAfterFilterCondition>
      phonetissLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'phonetiss', length, true, length, true);
    });
  }

  QueryBuilder<RecentWordsEntity, RecentWordsEntity, QAfterFilterCondition>
      phonetissIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'phonetiss', 0, true, 0, true);
    });
  }

  QueryBuilder<RecentWordsEntity, RecentWordsEntity, QAfterFilterCondition>
      phonetissIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'phonetiss', 0, false, 999999, true);
    });
  }

  QueryBuilder<RecentWordsEntity, RecentWordsEntity, QAfterFilterCondition>
      phonetissLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'phonetiss', 0, true, length, include);
    });
  }

  QueryBuilder<RecentWordsEntity, RecentWordsEntity, QAfterFilterCondition>
      phonetissLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'phonetiss', length, include, 999999, true);
    });
  }

  QueryBuilder<RecentWordsEntity, RecentWordsEntity, QAfterFilterCondition>
      phonetissLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'phonetiss', lower, includeLower, upper, includeUpper);
    });
  }

  QueryBuilder<RecentWordsEntity, RecentWordsEntity, QAfterFilterCondition>
      meanings(FilterQuery<MeaningEntity> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'meanings');
    });
  }

  QueryBuilder<RecentWordsEntity, RecentWordsEntity, QAfterFilterCondition>
      meaningsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'meanings', length, true, length, true);
    });
  }

  QueryBuilder<RecentWordsEntity, RecentWordsEntity, QAfterFilterCondition>
      meaningsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'meanings', 0, true, 0, true);
    });
  }

  QueryBuilder<RecentWordsEntity, RecentWordsEntity, QAfterFilterCondition>
      meaningsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'meanings', 0, false, 999999, true);
    });
  }

  QueryBuilder<RecentWordsEntity, RecentWordsEntity, QAfterFilterCondition>
      meaningsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'meanings', 0, true, length, include);
    });
  }

  QueryBuilder<RecentWordsEntity, RecentWordsEntity, QAfterFilterCondition>
      meaningsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'meanings', length, include, 999999, true);
    });
  }

  QueryBuilder<RecentWordsEntity, RecentWordsEntity, QAfterFilterCondition>
      meaningsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'meanings', lower, includeLower, upper, includeUpper);
    });
  }
}

extension RecentWordsEntityQuerySortBy
    on QueryBuilder<RecentWordsEntity, RecentWordsEntity, QSortBy> {
  QueryBuilder<RecentWordsEntity, RecentWordsEntity, QAfterSortBy>
      sortByOrigin() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'origin', Sort.asc);
    });
  }

  QueryBuilder<RecentWordsEntity, RecentWordsEntity, QAfterSortBy>
      sortByOriginDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'origin', Sort.desc);
    });
  }

  QueryBuilder<RecentWordsEntity, RecentWordsEntity, QAfterSortBy>
      sortByPhonetic() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phonetic', Sort.asc);
    });
  }

  QueryBuilder<RecentWordsEntity, RecentWordsEntity, QAfterSortBy>
      sortByPhoneticDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phonetic', Sort.desc);
    });
  }

  QueryBuilder<RecentWordsEntity, RecentWordsEntity, QAfterSortBy>
      sortByWord() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'word', Sort.asc);
    });
  }

  QueryBuilder<RecentWordsEntity, RecentWordsEntity, QAfterSortBy>
      sortByWordDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'word', Sort.desc);
    });
  }
}

extension RecentWordsEntityQuerySortThenBy
    on QueryBuilder<RecentWordsEntity, RecentWordsEntity, QSortThenBy> {
  QueryBuilder<RecentWordsEntity, RecentWordsEntity, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<RecentWordsEntity, RecentWordsEntity, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<RecentWordsEntity, RecentWordsEntity, QAfterSortBy>
      thenByOrigin() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'origin', Sort.asc);
    });
  }

  QueryBuilder<RecentWordsEntity, RecentWordsEntity, QAfterSortBy>
      thenByOriginDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'origin', Sort.desc);
    });
  }

  QueryBuilder<RecentWordsEntity, RecentWordsEntity, QAfterSortBy>
      thenByPhonetic() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phonetic', Sort.asc);
    });
  }

  QueryBuilder<RecentWordsEntity, RecentWordsEntity, QAfterSortBy>
      thenByPhoneticDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phonetic', Sort.desc);
    });
  }

  QueryBuilder<RecentWordsEntity, RecentWordsEntity, QAfterSortBy>
      thenByWord() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'word', Sort.asc);
    });
  }

  QueryBuilder<RecentWordsEntity, RecentWordsEntity, QAfterSortBy>
      thenByWordDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'word', Sort.desc);
    });
  }
}

extension RecentWordsEntityQueryWhereDistinct
    on QueryBuilder<RecentWordsEntity, RecentWordsEntity, QDistinct> {
  QueryBuilder<RecentWordsEntity, RecentWordsEntity, QDistinct>
      distinctByOrigin({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'origin', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RecentWordsEntity, RecentWordsEntity, QDistinct>
      distinctByPhonetic({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'phonetic', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RecentWordsEntity, RecentWordsEntity, QDistinct> distinctByWord(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'word', caseSensitive: caseSensitive);
    });
  }
}

extension RecentWordsEntityQueryProperty
    on QueryBuilder<RecentWordsEntity, RecentWordsEntity, QQueryProperty> {
  QueryBuilder<RecentWordsEntity, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<RecentWordsEntity, String?, QQueryOperations> originProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'origin');
    });
  }

  QueryBuilder<RecentWordsEntity, String?, QQueryOperations>
      phoneticProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'phonetic');
    });
  }

  QueryBuilder<RecentWordsEntity, String?, QQueryOperations> wordProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'word');
    });
  }
}
