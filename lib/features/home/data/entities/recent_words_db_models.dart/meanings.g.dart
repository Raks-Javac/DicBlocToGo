// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meanings.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetMeaningEntityCollection on Isar {
  IsarCollection<MeaningEntity> get meaningEntitys => this.collection();
}

const MeaningEntitySchema = CollectionSchema(
  name: r'MeaningEntity',
  id: -4959664364140080052,
  properties: {
    r'partOfSpeech': PropertySchema(
      id: 0,
      name: r'partOfSpeech',
      type: IsarType.string,
    )
  },
  estimateSize: _meaningEntityEstimateSize,
  serialize: _meaningEntitySerialize,
  deserialize: _meaningEntityDeserialize,
  deserializeProp: _meaningEntityDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {
    r'definitions': LinkSchema(
      id: -5163793196891928622,
      name: r'definitions',
      target: r'DefinitionEntity',
      single: false,
      linkName: r'meaning',
    )
  },
  embeddedSchemas: {},
  getId: _meaningEntityGetId,
  getLinks: _meaningEntityGetLinks,
  attach: _meaningEntityAttach,
  version: '3.1.0+1',
);

int _meaningEntityEstimateSize(
  MeaningEntity object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.partOfSpeech;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _meaningEntitySerialize(
  MeaningEntity object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.partOfSpeech);
}

MeaningEntity _meaningEntityDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = MeaningEntity();
  object.id = id;
  object.partOfSpeech = reader.readStringOrNull(offsets[0]);
  return object;
}

P _meaningEntityDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _meaningEntityGetId(MeaningEntity object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _meaningEntityGetLinks(MeaningEntity object) {
  return [object.definitions];
}

void _meaningEntityAttach(
    IsarCollection<dynamic> col, Id id, MeaningEntity object) {
  object.id = id;
  object.definitions
      .attach(col, col.isar.collection<DefinitionEntity>(), r'definitions', id);
}

extension MeaningEntityQueryWhereSort
    on QueryBuilder<MeaningEntity, MeaningEntity, QWhere> {
  QueryBuilder<MeaningEntity, MeaningEntity, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension MeaningEntityQueryWhere
    on QueryBuilder<MeaningEntity, MeaningEntity, QWhereClause> {
  QueryBuilder<MeaningEntity, MeaningEntity, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<MeaningEntity, MeaningEntity, QAfterWhereClause> idNotEqualTo(
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

  QueryBuilder<MeaningEntity, MeaningEntity, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<MeaningEntity, MeaningEntity, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<MeaningEntity, MeaningEntity, QAfterWhereClause> idBetween(
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

extension MeaningEntityQueryFilter
    on QueryBuilder<MeaningEntity, MeaningEntity, QFilterCondition> {
  QueryBuilder<MeaningEntity, MeaningEntity, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<MeaningEntity, MeaningEntity, QAfterFilterCondition>
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

  QueryBuilder<MeaningEntity, MeaningEntity, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<MeaningEntity, MeaningEntity, QAfterFilterCondition> idBetween(
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

  QueryBuilder<MeaningEntity, MeaningEntity, QAfterFilterCondition>
      partOfSpeechIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'partOfSpeech',
      ));
    });
  }

  QueryBuilder<MeaningEntity, MeaningEntity, QAfterFilterCondition>
      partOfSpeechIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'partOfSpeech',
      ));
    });
  }

  QueryBuilder<MeaningEntity, MeaningEntity, QAfterFilterCondition>
      partOfSpeechEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'partOfSpeech',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeaningEntity, MeaningEntity, QAfterFilterCondition>
      partOfSpeechGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'partOfSpeech',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeaningEntity, MeaningEntity, QAfterFilterCondition>
      partOfSpeechLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'partOfSpeech',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeaningEntity, MeaningEntity, QAfterFilterCondition>
      partOfSpeechBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'partOfSpeech',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeaningEntity, MeaningEntity, QAfterFilterCondition>
      partOfSpeechStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'partOfSpeech',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeaningEntity, MeaningEntity, QAfterFilterCondition>
      partOfSpeechEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'partOfSpeech',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeaningEntity, MeaningEntity, QAfterFilterCondition>
      partOfSpeechContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'partOfSpeech',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeaningEntity, MeaningEntity, QAfterFilterCondition>
      partOfSpeechMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'partOfSpeech',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeaningEntity, MeaningEntity, QAfterFilterCondition>
      partOfSpeechIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'partOfSpeech',
        value: '',
      ));
    });
  }

  QueryBuilder<MeaningEntity, MeaningEntity, QAfterFilterCondition>
      partOfSpeechIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'partOfSpeech',
        value: '',
      ));
    });
  }
}

extension MeaningEntityQueryObject
    on QueryBuilder<MeaningEntity, MeaningEntity, QFilterCondition> {}

extension MeaningEntityQueryLinks
    on QueryBuilder<MeaningEntity, MeaningEntity, QFilterCondition> {
  QueryBuilder<MeaningEntity, MeaningEntity, QAfterFilterCondition> definitions(
      FilterQuery<DefinitionEntity> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'definitions');
    });
  }

  QueryBuilder<MeaningEntity, MeaningEntity, QAfterFilterCondition>
      definitionsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'definitions', length, true, length, true);
    });
  }

  QueryBuilder<MeaningEntity, MeaningEntity, QAfterFilterCondition>
      definitionsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'definitions', 0, true, 0, true);
    });
  }

  QueryBuilder<MeaningEntity, MeaningEntity, QAfterFilterCondition>
      definitionsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'definitions', 0, false, 999999, true);
    });
  }

  QueryBuilder<MeaningEntity, MeaningEntity, QAfterFilterCondition>
      definitionsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'definitions', 0, true, length, include);
    });
  }

  QueryBuilder<MeaningEntity, MeaningEntity, QAfterFilterCondition>
      definitionsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'definitions', length, include, 999999, true);
    });
  }

  QueryBuilder<MeaningEntity, MeaningEntity, QAfterFilterCondition>
      definitionsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'definitions', lower, includeLower, upper, includeUpper);
    });
  }
}

extension MeaningEntityQuerySortBy
    on QueryBuilder<MeaningEntity, MeaningEntity, QSortBy> {
  QueryBuilder<MeaningEntity, MeaningEntity, QAfterSortBy>
      sortByPartOfSpeech() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partOfSpeech', Sort.asc);
    });
  }

  QueryBuilder<MeaningEntity, MeaningEntity, QAfterSortBy>
      sortByPartOfSpeechDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partOfSpeech', Sort.desc);
    });
  }
}

extension MeaningEntityQuerySortThenBy
    on QueryBuilder<MeaningEntity, MeaningEntity, QSortThenBy> {
  QueryBuilder<MeaningEntity, MeaningEntity, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<MeaningEntity, MeaningEntity, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<MeaningEntity, MeaningEntity, QAfterSortBy>
      thenByPartOfSpeech() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partOfSpeech', Sort.asc);
    });
  }

  QueryBuilder<MeaningEntity, MeaningEntity, QAfterSortBy>
      thenByPartOfSpeechDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partOfSpeech', Sort.desc);
    });
  }
}

extension MeaningEntityQueryWhereDistinct
    on QueryBuilder<MeaningEntity, MeaningEntity, QDistinct> {
  QueryBuilder<MeaningEntity, MeaningEntity, QDistinct> distinctByPartOfSpeech(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'partOfSpeech', caseSensitive: caseSensitive);
    });
  }
}

extension MeaningEntityQueryProperty
    on QueryBuilder<MeaningEntity, MeaningEntity, QQueryProperty> {
  QueryBuilder<MeaningEntity, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<MeaningEntity, String?, QQueryOperations>
      partOfSpeechProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'partOfSpeech');
    });
  }
}
