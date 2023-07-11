// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phonetics.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetPhoneticEntityCollection on Isar {
  IsarCollection<PhoneticEntity> get phoneticEntitys => this.collection();
}

const PhoneticEntitySchema = CollectionSchema(
  name: r'PhoneticEntity',
  id: 4259180884714928757,
  properties: {
    r'audio': PropertySchema(
      id: 0,
      name: r'audio',
      type: IsarType.string,
    ),
    r'text': PropertySchema(
      id: 1,
      name: r'text',
      type: IsarType.string,
    )
  },
  estimateSize: _phoneticEntityEstimateSize,
  serialize: _phoneticEntitySerialize,
  deserialize: _phoneticEntityDeserialize,
  deserializeProp: _phoneticEntityDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {
    r'recentW': LinkSchema(
      id: -3983542960420094352,
      name: r'recentW',
      target: r'RecentWordsEntity',
      single: false,
    )
  },
  embeddedSchemas: {},
  getId: _phoneticEntityGetId,
  getLinks: _phoneticEntityGetLinks,
  attach: _phoneticEntityAttach,
  version: '3.1.0+1',
);

int _phoneticEntityEstimateSize(
  PhoneticEntity object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.audio;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.text;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _phoneticEntitySerialize(
  PhoneticEntity object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.audio);
  writer.writeString(offsets[1], object.text);
}

PhoneticEntity _phoneticEntityDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = PhoneticEntity();
  object.audio = reader.readStringOrNull(offsets[0]);
  object.id = id;
  object.text = reader.readStringOrNull(offsets[1]);
  return object;
}

P _phoneticEntityDeserializeProp<P>(
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
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _phoneticEntityGetId(PhoneticEntity object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _phoneticEntityGetLinks(PhoneticEntity object) {
  return [object.recentW];
}

void _phoneticEntityAttach(
    IsarCollection<dynamic> col, Id id, PhoneticEntity object) {
  object.id = id;
  object.recentW
      .attach(col, col.isar.collection<RecentWordsEntity>(), r'recentW', id);
}

extension PhoneticEntityQueryWhereSort
    on QueryBuilder<PhoneticEntity, PhoneticEntity, QWhere> {
  QueryBuilder<PhoneticEntity, PhoneticEntity, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension PhoneticEntityQueryWhere
    on QueryBuilder<PhoneticEntity, PhoneticEntity, QWhereClause> {
  QueryBuilder<PhoneticEntity, PhoneticEntity, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<PhoneticEntity, PhoneticEntity, QAfterWhereClause> idNotEqualTo(
      Id id) {
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

  QueryBuilder<PhoneticEntity, PhoneticEntity, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<PhoneticEntity, PhoneticEntity, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<PhoneticEntity, PhoneticEntity, QAfterWhereClause> idBetween(
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

extension PhoneticEntityQueryFilter
    on QueryBuilder<PhoneticEntity, PhoneticEntity, QFilterCondition> {
  QueryBuilder<PhoneticEntity, PhoneticEntity, QAfterFilterCondition>
      audioIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'audio',
      ));
    });
  }

  QueryBuilder<PhoneticEntity, PhoneticEntity, QAfterFilterCondition>
      audioIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'audio',
      ));
    });
  }

  QueryBuilder<PhoneticEntity, PhoneticEntity, QAfterFilterCondition>
      audioEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'audio',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PhoneticEntity, PhoneticEntity, QAfterFilterCondition>
      audioGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'audio',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PhoneticEntity, PhoneticEntity, QAfterFilterCondition>
      audioLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'audio',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PhoneticEntity, PhoneticEntity, QAfterFilterCondition>
      audioBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'audio',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PhoneticEntity, PhoneticEntity, QAfterFilterCondition>
      audioStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'audio',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PhoneticEntity, PhoneticEntity, QAfterFilterCondition>
      audioEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'audio',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PhoneticEntity, PhoneticEntity, QAfterFilterCondition>
      audioContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'audio',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PhoneticEntity, PhoneticEntity, QAfterFilterCondition>
      audioMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'audio',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PhoneticEntity, PhoneticEntity, QAfterFilterCondition>
      audioIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'audio',
        value: '',
      ));
    });
  }

  QueryBuilder<PhoneticEntity, PhoneticEntity, QAfterFilterCondition>
      audioIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'audio',
        value: '',
      ));
    });
  }

  QueryBuilder<PhoneticEntity, PhoneticEntity, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<PhoneticEntity, PhoneticEntity, QAfterFilterCondition>
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

  QueryBuilder<PhoneticEntity, PhoneticEntity, QAfterFilterCondition>
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

  QueryBuilder<PhoneticEntity, PhoneticEntity, QAfterFilterCondition> idBetween(
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

  QueryBuilder<PhoneticEntity, PhoneticEntity, QAfterFilterCondition>
      textIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'text',
      ));
    });
  }

  QueryBuilder<PhoneticEntity, PhoneticEntity, QAfterFilterCondition>
      textIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'text',
      ));
    });
  }

  QueryBuilder<PhoneticEntity, PhoneticEntity, QAfterFilterCondition>
      textEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'text',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PhoneticEntity, PhoneticEntity, QAfterFilterCondition>
      textGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'text',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PhoneticEntity, PhoneticEntity, QAfterFilterCondition>
      textLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'text',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PhoneticEntity, PhoneticEntity, QAfterFilterCondition>
      textBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'text',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PhoneticEntity, PhoneticEntity, QAfterFilterCondition>
      textStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'text',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PhoneticEntity, PhoneticEntity, QAfterFilterCondition>
      textEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'text',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PhoneticEntity, PhoneticEntity, QAfterFilterCondition>
      textContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'text',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PhoneticEntity, PhoneticEntity, QAfterFilterCondition>
      textMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'text',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PhoneticEntity, PhoneticEntity, QAfterFilterCondition>
      textIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'text',
        value: '',
      ));
    });
  }

  QueryBuilder<PhoneticEntity, PhoneticEntity, QAfterFilterCondition>
      textIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'text',
        value: '',
      ));
    });
  }
}

extension PhoneticEntityQueryObject
    on QueryBuilder<PhoneticEntity, PhoneticEntity, QFilterCondition> {}

extension PhoneticEntityQueryLinks
    on QueryBuilder<PhoneticEntity, PhoneticEntity, QFilterCondition> {
  QueryBuilder<PhoneticEntity, PhoneticEntity, QAfterFilterCondition> recentW(
      FilterQuery<RecentWordsEntity> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'recentW');
    });
  }

  QueryBuilder<PhoneticEntity, PhoneticEntity, QAfterFilterCondition>
      recentWLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'recentW', length, true, length, true);
    });
  }

  QueryBuilder<PhoneticEntity, PhoneticEntity, QAfterFilterCondition>
      recentWIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'recentW', 0, true, 0, true);
    });
  }

  QueryBuilder<PhoneticEntity, PhoneticEntity, QAfterFilterCondition>
      recentWIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'recentW', 0, false, 999999, true);
    });
  }

  QueryBuilder<PhoneticEntity, PhoneticEntity, QAfterFilterCondition>
      recentWLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'recentW', 0, true, length, include);
    });
  }

  QueryBuilder<PhoneticEntity, PhoneticEntity, QAfterFilterCondition>
      recentWLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'recentW', length, include, 999999, true);
    });
  }

  QueryBuilder<PhoneticEntity, PhoneticEntity, QAfterFilterCondition>
      recentWLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'recentW', lower, includeLower, upper, includeUpper);
    });
  }
}

extension PhoneticEntityQuerySortBy
    on QueryBuilder<PhoneticEntity, PhoneticEntity, QSortBy> {
  QueryBuilder<PhoneticEntity, PhoneticEntity, QAfterSortBy> sortByAudio() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'audio', Sort.asc);
    });
  }

  QueryBuilder<PhoneticEntity, PhoneticEntity, QAfterSortBy> sortByAudioDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'audio', Sort.desc);
    });
  }

  QueryBuilder<PhoneticEntity, PhoneticEntity, QAfterSortBy> sortByText() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'text', Sort.asc);
    });
  }

  QueryBuilder<PhoneticEntity, PhoneticEntity, QAfterSortBy> sortByTextDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'text', Sort.desc);
    });
  }
}

extension PhoneticEntityQuerySortThenBy
    on QueryBuilder<PhoneticEntity, PhoneticEntity, QSortThenBy> {
  QueryBuilder<PhoneticEntity, PhoneticEntity, QAfterSortBy> thenByAudio() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'audio', Sort.asc);
    });
  }

  QueryBuilder<PhoneticEntity, PhoneticEntity, QAfterSortBy> thenByAudioDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'audio', Sort.desc);
    });
  }

  QueryBuilder<PhoneticEntity, PhoneticEntity, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<PhoneticEntity, PhoneticEntity, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<PhoneticEntity, PhoneticEntity, QAfterSortBy> thenByText() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'text', Sort.asc);
    });
  }

  QueryBuilder<PhoneticEntity, PhoneticEntity, QAfterSortBy> thenByTextDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'text', Sort.desc);
    });
  }
}

extension PhoneticEntityQueryWhereDistinct
    on QueryBuilder<PhoneticEntity, PhoneticEntity, QDistinct> {
  QueryBuilder<PhoneticEntity, PhoneticEntity, QDistinct> distinctByAudio(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'audio', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PhoneticEntity, PhoneticEntity, QDistinct> distinctByText(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'text', caseSensitive: caseSensitive);
    });
  }
}

extension PhoneticEntityQueryProperty
    on QueryBuilder<PhoneticEntity, PhoneticEntity, QQueryProperty> {
  QueryBuilder<PhoneticEntity, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<PhoneticEntity, String?, QQueryOperations> audioProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'audio');
    });
  }

  QueryBuilder<PhoneticEntity, String?, QQueryOperations> textProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'text');
    });
  }
}
