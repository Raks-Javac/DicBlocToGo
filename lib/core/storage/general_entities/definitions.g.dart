// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'definitions.dart';

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const DefinitionSchema = Schema(
  name: r'Definition',
  id: -6661250615855835374,
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
  estimateSize: _definitionEstimateSize,
  serialize: _definitionSerialize,
  deserialize: _definitionDeserialize,
  deserializeProp: _definitionDeserializeProp,
);

int _definitionEstimateSize(
  Definition object,
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

void _definitionSerialize(
  Definition object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeStringList(offsets[0], object.antonyms);
  writer.writeString(offsets[1], object.definition);
  writer.writeString(offsets[2], object.example);
  writer.writeStringList(offsets[3], object.synonyms);
}

Definition _definitionDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Definition(
    antonyms: reader.readStringList(offsets[0]),
    definition: reader.readStringOrNull(offsets[1]),
    example: reader.readStringOrNull(offsets[2]),
    synonyms: reader.readStringList(offsets[3]),
  );
  return object;
}

P _definitionDeserializeProp<P>(
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

extension DefinitionQueryFilter
    on QueryBuilder<Definition, Definition, QFilterCondition> {
  QueryBuilder<Definition, Definition, QAfterFilterCondition> antonymsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'antonyms',
      ));
    });
  }

  QueryBuilder<Definition, Definition, QAfterFilterCondition>
      antonymsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'antonyms',
      ));
    });
  }

  QueryBuilder<Definition, Definition, QAfterFilterCondition>
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

  QueryBuilder<Definition, Definition, QAfterFilterCondition>
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

  QueryBuilder<Definition, Definition, QAfterFilterCondition>
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

  QueryBuilder<Definition, Definition, QAfterFilterCondition>
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

  QueryBuilder<Definition, Definition, QAfterFilterCondition>
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

  QueryBuilder<Definition, Definition, QAfterFilterCondition>
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

  QueryBuilder<Definition, Definition, QAfterFilterCondition>
      antonymsElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'antonyms',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Definition, Definition, QAfterFilterCondition>
      antonymsElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'antonyms',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Definition, Definition, QAfterFilterCondition>
      antonymsElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'antonyms',
        value: '',
      ));
    });
  }

  QueryBuilder<Definition, Definition, QAfterFilterCondition>
      antonymsElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'antonyms',
        value: '',
      ));
    });
  }

  QueryBuilder<Definition, Definition, QAfterFilterCondition>
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

  QueryBuilder<Definition, Definition, QAfterFilterCondition>
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

  QueryBuilder<Definition, Definition, QAfterFilterCondition>
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

  QueryBuilder<Definition, Definition, QAfterFilterCondition>
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

  QueryBuilder<Definition, Definition, QAfterFilterCondition>
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

  QueryBuilder<Definition, Definition, QAfterFilterCondition>
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

  QueryBuilder<Definition, Definition, QAfterFilterCondition>
      definitionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'definition',
      ));
    });
  }

  QueryBuilder<Definition, Definition, QAfterFilterCondition>
      definitionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'definition',
      ));
    });
  }

  QueryBuilder<Definition, Definition, QAfterFilterCondition> definitionEqualTo(
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

  QueryBuilder<Definition, Definition, QAfterFilterCondition>
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

  QueryBuilder<Definition, Definition, QAfterFilterCondition>
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

  QueryBuilder<Definition, Definition, QAfterFilterCondition> definitionBetween(
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

  QueryBuilder<Definition, Definition, QAfterFilterCondition>
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

  QueryBuilder<Definition, Definition, QAfterFilterCondition>
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

  QueryBuilder<Definition, Definition, QAfterFilterCondition>
      definitionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'definition',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Definition, Definition, QAfterFilterCondition> definitionMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'definition',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Definition, Definition, QAfterFilterCondition>
      definitionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'definition',
        value: '',
      ));
    });
  }

  QueryBuilder<Definition, Definition, QAfterFilterCondition>
      definitionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'definition',
        value: '',
      ));
    });
  }

  QueryBuilder<Definition, Definition, QAfterFilterCondition> exampleIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'example',
      ));
    });
  }

  QueryBuilder<Definition, Definition, QAfterFilterCondition>
      exampleIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'example',
      ));
    });
  }

  QueryBuilder<Definition, Definition, QAfterFilterCondition> exampleEqualTo(
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

  QueryBuilder<Definition, Definition, QAfterFilterCondition>
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

  QueryBuilder<Definition, Definition, QAfterFilterCondition> exampleLessThan(
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

  QueryBuilder<Definition, Definition, QAfterFilterCondition> exampleBetween(
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

  QueryBuilder<Definition, Definition, QAfterFilterCondition> exampleStartsWith(
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

  QueryBuilder<Definition, Definition, QAfterFilterCondition> exampleEndsWith(
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

  QueryBuilder<Definition, Definition, QAfterFilterCondition> exampleContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'example',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Definition, Definition, QAfterFilterCondition> exampleMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'example',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Definition, Definition, QAfterFilterCondition> exampleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'example',
        value: '',
      ));
    });
  }

  QueryBuilder<Definition, Definition, QAfterFilterCondition>
      exampleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'example',
        value: '',
      ));
    });
  }

  QueryBuilder<Definition, Definition, QAfterFilterCondition> synonymsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'synonyms',
      ));
    });
  }

  QueryBuilder<Definition, Definition, QAfterFilterCondition>
      synonymsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'synonyms',
      ));
    });
  }

  QueryBuilder<Definition, Definition, QAfterFilterCondition>
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

  QueryBuilder<Definition, Definition, QAfterFilterCondition>
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

  QueryBuilder<Definition, Definition, QAfterFilterCondition>
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

  QueryBuilder<Definition, Definition, QAfterFilterCondition>
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

  QueryBuilder<Definition, Definition, QAfterFilterCondition>
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

  QueryBuilder<Definition, Definition, QAfterFilterCondition>
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

  QueryBuilder<Definition, Definition, QAfterFilterCondition>
      synonymsElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'synonyms',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Definition, Definition, QAfterFilterCondition>
      synonymsElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'synonyms',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Definition, Definition, QAfterFilterCondition>
      synonymsElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'synonyms',
        value: '',
      ));
    });
  }

  QueryBuilder<Definition, Definition, QAfterFilterCondition>
      synonymsElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'synonyms',
        value: '',
      ));
    });
  }

  QueryBuilder<Definition, Definition, QAfterFilterCondition>
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

  QueryBuilder<Definition, Definition, QAfterFilterCondition>
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

  QueryBuilder<Definition, Definition, QAfterFilterCondition>
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

  QueryBuilder<Definition, Definition, QAfterFilterCondition>
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

  QueryBuilder<Definition, Definition, QAfterFilterCondition>
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

  QueryBuilder<Definition, Definition, QAfterFilterCondition>
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

extension DefinitionQueryObject
    on QueryBuilder<Definition, Definition, QFilterCondition> {}
