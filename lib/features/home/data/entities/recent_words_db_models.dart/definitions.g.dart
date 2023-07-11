// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'definitions.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetDefinitionEntityCollection on Isar {
  IsarCollection<DefinitionEntity> get definitionEntitys => this.collection();
}

const DefinitionEntitySchema = CollectionSchema(
  name: r'DefinitionEntity',
  id: -507240498573664144,
  properties: {
    r'antonyms': PropertySchema(
      id: 0,
      name: r'antonyms',
      type: IsarType.stringList,
    ),
    r'definition': PropertySchema(
      id: 1,
      name: r'definition',
      type: IsarType.string,
    ),
    r'example': PropertySchema(
      id: 2,
      name: r'example',
      type: IsarType.string,
    ),
    r'synonyms': PropertySchema(
      id: 3,
      name: r'synonyms',
      type: IsarType.stringList,
    )
  },
  estimateSize: _definitionEntityEstimateSize,
  serialize: _definitionEntitySerialize,
  deserialize: _definitionEntityDeserialize,
  deserializeProp: _definitionEntityDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {
    r'meaning': LinkSchema(
      id: -8573029929717098858,
      name: r'meaning',
      target: r'MeaningEntity',
      single: true,
    )
  },
  embeddedSchemas: {},
  getId: _definitionEntityGetId,
  getLinks: _definitionEntityGetLinks,
  attach: _definitionEntityAttach,
  version: '3.1.0+1',
);

int _definitionEntityEstimateSize(
  DefinitionEntity object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final list = object.antonyms;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += value.length * 3;
        }
      }
    }
  }
  {
    final value = object.definition;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.example;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final list = object.synonyms;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += value.length * 3;
        }
      }
    }
  }
  return bytesCount;
}

void _definitionEntitySerialize(
  DefinitionEntity object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeStringList(offsets[0], object.antonyms);
  writer.writeString(offsets[1], object.definition);
  writer.writeString(offsets[2], object.example);
  writer.writeStringList(offsets[3], object.synonyms);
}

DefinitionEntity _definitionEntityDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = DefinitionEntity();
  object.antonyms = reader.readStringList(offsets[0]);
  object.definition = reader.readStringOrNull(offsets[1]);
  object.example = reader.readStringOrNull(offsets[2]);
  object.id = id;
  object.synonyms = reader.readStringList(offsets[3]);
  return object;
}

P _definitionEntityDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringList(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readStringList(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _definitionEntityGetId(DefinitionEntity object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _definitionEntityGetLinks(DefinitionEntity object) {
  return [object.meaning];
}

void _definitionEntityAttach(
    IsarCollection<dynamic> col, Id id, DefinitionEntity object) {
  object.id = id;
  object.meaning
      .attach(col, col.isar.collection<MeaningEntity>(), r'meaning', id);
}

extension DefinitionEntityQueryWhereSort
    on QueryBuilder<DefinitionEntity, DefinitionEntity, QWhere> {
  QueryBuilder<DefinitionEntity, DefinitionEntity, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension DefinitionEntityQueryWhere
    on QueryBuilder<DefinitionEntity, DefinitionEntity, QWhereClause> {
  QueryBuilder<DefinitionEntity, DefinitionEntity, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<DefinitionEntity, DefinitionEntity, QAfterWhereClause>
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

  QueryBuilder<DefinitionEntity, DefinitionEntity, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<DefinitionEntity, DefinitionEntity, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<DefinitionEntity, DefinitionEntity, QAfterWhereClause> idBetween(
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

extension DefinitionEntityQueryFilter
    on QueryBuilder<DefinitionEntity, DefinitionEntity, QFilterCondition> {
  QueryBuilder<DefinitionEntity, DefinitionEntity, QAfterFilterCondition>
      antonymsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'antonyms',
      ));
    });
  }

  QueryBuilder<DefinitionEntity, DefinitionEntity, QAfterFilterCondition>
      antonymsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'antonyms',
      ));
    });
  }

  QueryBuilder<DefinitionEntity, DefinitionEntity, QAfterFilterCondition>
      antonymsElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'antonyms',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DefinitionEntity, DefinitionEntity, QAfterFilterCondition>
      antonymsElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'antonyms',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DefinitionEntity, DefinitionEntity, QAfterFilterCondition>
      antonymsElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'antonyms',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DefinitionEntity, DefinitionEntity, QAfterFilterCondition>
      antonymsElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'antonyms',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DefinitionEntity, DefinitionEntity, QAfterFilterCondition>
      antonymsElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'antonyms',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DefinitionEntity, DefinitionEntity, QAfterFilterCondition>
      antonymsElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'antonyms',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DefinitionEntity, DefinitionEntity, QAfterFilterCondition>
      antonymsElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'antonyms',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DefinitionEntity, DefinitionEntity, QAfterFilterCondition>
      antonymsElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'antonyms',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DefinitionEntity, DefinitionEntity, QAfterFilterCondition>
      antonymsElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'antonyms',
        value: '',
      ));
    });
  }

  QueryBuilder<DefinitionEntity, DefinitionEntity, QAfterFilterCondition>
      antonymsElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'antonyms',
        value: '',
      ));
    });
  }

  QueryBuilder<DefinitionEntity, DefinitionEntity, QAfterFilterCondition>
      antonymsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'antonyms',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<DefinitionEntity, DefinitionEntity, QAfterFilterCondition>
      antonymsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'antonyms',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<DefinitionEntity, DefinitionEntity, QAfterFilterCondition>
      antonymsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'antonyms',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<DefinitionEntity, DefinitionEntity, QAfterFilterCondition>
      antonymsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'antonyms',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<DefinitionEntity, DefinitionEntity, QAfterFilterCondition>
      antonymsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'antonyms',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<DefinitionEntity, DefinitionEntity, QAfterFilterCondition>
      antonymsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'antonyms',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<DefinitionEntity, DefinitionEntity, QAfterFilterCondition>
      definitionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'definition',
      ));
    });
  }

  QueryBuilder<DefinitionEntity, DefinitionEntity, QAfterFilterCondition>
      definitionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'definition',
      ));
    });
  }

  QueryBuilder<DefinitionEntity, DefinitionEntity, QAfterFilterCondition>
      definitionEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'definition',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DefinitionEntity, DefinitionEntity, QAfterFilterCondition>
      definitionGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'definition',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DefinitionEntity, DefinitionEntity, QAfterFilterCondition>
      definitionLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'definition',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DefinitionEntity, DefinitionEntity, QAfterFilterCondition>
      definitionBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'definition',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DefinitionEntity, DefinitionEntity, QAfterFilterCondition>
      definitionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'definition',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DefinitionEntity, DefinitionEntity, QAfterFilterCondition>
      definitionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'definition',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DefinitionEntity, DefinitionEntity, QAfterFilterCondition>
      definitionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'definition',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DefinitionEntity, DefinitionEntity, QAfterFilterCondition>
      definitionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'definition',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DefinitionEntity, DefinitionEntity, QAfterFilterCondition>
      definitionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'definition',
        value: '',
      ));
    });
  }

  QueryBuilder<DefinitionEntity, DefinitionEntity, QAfterFilterCondition>
      definitionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'definition',
        value: '',
      ));
    });
  }

  QueryBuilder<DefinitionEntity, DefinitionEntity, QAfterFilterCondition>
      exampleIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'example',
      ));
    });
  }

  QueryBuilder<DefinitionEntity, DefinitionEntity, QAfterFilterCondition>
      exampleIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'example',
      ));
    });
  }

  QueryBuilder<DefinitionEntity, DefinitionEntity, QAfterFilterCondition>
      exampleEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'example',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DefinitionEntity, DefinitionEntity, QAfterFilterCondition>
      exampleGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'example',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DefinitionEntity, DefinitionEntity, QAfterFilterCondition>
      exampleLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'example',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DefinitionEntity, DefinitionEntity, QAfterFilterCondition>
      exampleBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'example',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DefinitionEntity, DefinitionEntity, QAfterFilterCondition>
      exampleStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'example',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DefinitionEntity, DefinitionEntity, QAfterFilterCondition>
      exampleEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'example',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DefinitionEntity, DefinitionEntity, QAfterFilterCondition>
      exampleContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'example',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DefinitionEntity, DefinitionEntity, QAfterFilterCondition>
      exampleMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'example',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DefinitionEntity, DefinitionEntity, QAfterFilterCondition>
      exampleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'example',
        value: '',
      ));
    });
  }

  QueryBuilder<DefinitionEntity, DefinitionEntity, QAfterFilterCondition>
      exampleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'example',
        value: '',
      ));
    });
  }

  QueryBuilder<DefinitionEntity, DefinitionEntity, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<DefinitionEntity, DefinitionEntity, QAfterFilterCondition>
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

  QueryBuilder<DefinitionEntity, DefinitionEntity, QAfterFilterCondition>
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

  QueryBuilder<DefinitionEntity, DefinitionEntity, QAfterFilterCondition>
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

  QueryBuilder<DefinitionEntity, DefinitionEntity, QAfterFilterCondition>
      synonymsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'synonyms',
      ));
    });
  }

  QueryBuilder<DefinitionEntity, DefinitionEntity, QAfterFilterCondition>
      synonymsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'synonyms',
      ));
    });
  }

  QueryBuilder<DefinitionEntity, DefinitionEntity, QAfterFilterCondition>
      synonymsElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'synonyms',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DefinitionEntity, DefinitionEntity, QAfterFilterCondition>
      synonymsElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'synonyms',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DefinitionEntity, DefinitionEntity, QAfterFilterCondition>
      synonymsElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'synonyms',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DefinitionEntity, DefinitionEntity, QAfterFilterCondition>
      synonymsElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'synonyms',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DefinitionEntity, DefinitionEntity, QAfterFilterCondition>
      synonymsElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'synonyms',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DefinitionEntity, DefinitionEntity, QAfterFilterCondition>
      synonymsElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'synonyms',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DefinitionEntity, DefinitionEntity, QAfterFilterCondition>
      synonymsElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'synonyms',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DefinitionEntity, DefinitionEntity, QAfterFilterCondition>
      synonymsElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'synonyms',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DefinitionEntity, DefinitionEntity, QAfterFilterCondition>
      synonymsElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'synonyms',
        value: '',
      ));
    });
  }

  QueryBuilder<DefinitionEntity, DefinitionEntity, QAfterFilterCondition>
      synonymsElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'synonyms',
        value: '',
      ));
    });
  }

  QueryBuilder<DefinitionEntity, DefinitionEntity, QAfterFilterCondition>
      synonymsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'synonyms',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<DefinitionEntity, DefinitionEntity, QAfterFilterCondition>
      synonymsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'synonyms',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<DefinitionEntity, DefinitionEntity, QAfterFilterCondition>
      synonymsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'synonyms',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<DefinitionEntity, DefinitionEntity, QAfterFilterCondition>
      synonymsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'synonyms',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<DefinitionEntity, DefinitionEntity, QAfterFilterCondition>
      synonymsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'synonyms',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<DefinitionEntity, DefinitionEntity, QAfterFilterCondition>
      synonymsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'synonyms',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }
}

extension DefinitionEntityQueryObject
    on QueryBuilder<DefinitionEntity, DefinitionEntity, QFilterCondition> {}

extension DefinitionEntityQueryLinks
    on QueryBuilder<DefinitionEntity, DefinitionEntity, QFilterCondition> {
  QueryBuilder<DefinitionEntity, DefinitionEntity, QAfterFilterCondition>
      meaning(FilterQuery<MeaningEntity> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'meaning');
    });
  }

  QueryBuilder<DefinitionEntity, DefinitionEntity, QAfterFilterCondition>
      meaningIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'meaning', 0, true, 0, true);
    });
  }
}

extension DefinitionEntityQuerySortBy
    on QueryBuilder<DefinitionEntity, DefinitionEntity, QSortBy> {
  QueryBuilder<DefinitionEntity, DefinitionEntity, QAfterSortBy>
      sortByDefinition() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'definition', Sort.asc);
    });
  }

  QueryBuilder<DefinitionEntity, DefinitionEntity, QAfterSortBy>
      sortByDefinitionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'definition', Sort.desc);
    });
  }

  QueryBuilder<DefinitionEntity, DefinitionEntity, QAfterSortBy>
      sortByExample() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'example', Sort.asc);
    });
  }

  QueryBuilder<DefinitionEntity, DefinitionEntity, QAfterSortBy>
      sortByExampleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'example', Sort.desc);
    });
  }
}

extension DefinitionEntityQuerySortThenBy
    on QueryBuilder<DefinitionEntity, DefinitionEntity, QSortThenBy> {
  QueryBuilder<DefinitionEntity, DefinitionEntity, QAfterSortBy>
      thenByDefinition() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'definition', Sort.asc);
    });
  }

  QueryBuilder<DefinitionEntity, DefinitionEntity, QAfterSortBy>
      thenByDefinitionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'definition', Sort.desc);
    });
  }

  QueryBuilder<DefinitionEntity, DefinitionEntity, QAfterSortBy>
      thenByExample() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'example', Sort.asc);
    });
  }

  QueryBuilder<DefinitionEntity, DefinitionEntity, QAfterSortBy>
      thenByExampleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'example', Sort.desc);
    });
  }

  QueryBuilder<DefinitionEntity, DefinitionEntity, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<DefinitionEntity, DefinitionEntity, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }
}

extension DefinitionEntityQueryWhereDistinct
    on QueryBuilder<DefinitionEntity, DefinitionEntity, QDistinct> {
  QueryBuilder<DefinitionEntity, DefinitionEntity, QDistinct>
      distinctByAntonyms() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'antonyms');
    });
  }

  QueryBuilder<DefinitionEntity, DefinitionEntity, QDistinct>
      distinctByDefinition({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'definition', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DefinitionEntity, DefinitionEntity, QDistinct> distinctByExample(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'example', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DefinitionEntity, DefinitionEntity, QDistinct>
      distinctBySynonyms() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'synonyms');
    });
  }
}

extension DefinitionEntityQueryProperty
    on QueryBuilder<DefinitionEntity, DefinitionEntity, QQueryProperty> {
  QueryBuilder<DefinitionEntity, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<DefinitionEntity, List<String>?, QQueryOperations>
      antonymsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'antonyms');
    });
  }

  QueryBuilder<DefinitionEntity, String?, QQueryOperations>
      definitionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'definition');
    });
  }

  QueryBuilder<DefinitionEntity, String?, QQueryOperations> exampleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'example');
    });
  }

  QueryBuilder<DefinitionEntity, List<String>?, QQueryOperations>
      synonymsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'synonyms');
    });
  }
}
