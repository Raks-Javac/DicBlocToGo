// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recent_words_entity.dart';

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
    r'isBookMarked': PropertySchema(
      id: 0,
      name: r'isBookMarked',
      type: IsarType.bool,
    ),
    r'meanings': PropertySchema(
      id: 1,
      name: r'meanings',
      type: IsarType.objectList,
      target: r'Meaning',
    ),
    r'origin': PropertySchema(
      id: 2,
      name: r'origin',
      type: IsarType.string,
    ),
    r'phonetic': PropertySchema(
      id: 3,
      name: r'phonetic',
      type: IsarType.string,
    ),
    r'phonetics': PropertySchema(
      id: 4,
      name: r'phonetics',
      type: IsarType.objectList,
      target: r'Phonetic',
    ),
    r'word': PropertySchema(
      id: 5,
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
  links: {},
  embeddedSchemas: {
    r'Phonetic': PhoneticSchema,
    r'Meaning': MeaningSchema,
    r'Definition': DefinitionSchema
  },
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
    final list = object.meanings;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        final offsets = allOffsets[Meaning]!;
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += MeaningSchema.estimateSize(value, offsets, allOffsets);
        }
      }
    }
  }
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
    final list = object.phonetics;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        final offsets = allOffsets[Phonetic]!;
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += PhoneticSchema.estimateSize(value, offsets, allOffsets);
        }
      }
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
  writer.writeBool(offsets[0], object.isBookMarked);
  writer.writeObjectList<Meaning>(
    offsets[1],
    allOffsets,
    MeaningSchema.serialize,
    object.meanings,
  );
  writer.writeString(offsets[2], object.origin);
  writer.writeString(offsets[3], object.phonetic);
  writer.writeObjectList<Phonetic>(
    offsets[4],
    allOffsets,
    PhoneticSchema.serialize,
    object.phonetics,
  );
  writer.writeString(offsets[5], object.word);
}

RecentWordsEntity _recentWordsEntityDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = RecentWordsEntity();
  object.id = id;
  object.isBookMarked = reader.readBool(offsets[0]);
  object.meanings = reader.readObjectList<Meaning>(
    offsets[1],
    MeaningSchema.deserialize,
    allOffsets,
    Meaning(),
  );
  object.origin = reader.readStringOrNull(offsets[2]);
  object.phonetic = reader.readStringOrNull(offsets[3]);
  object.phonetics = reader.readObjectList<Phonetic>(
    offsets[4],
    PhoneticSchema.deserialize,
    allOffsets,
    Phonetic(),
  );
  object.word = reader.readStringOrNull(offsets[5]);
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
      return (reader.readBool(offset)) as P;
    case 1:
      return (reader.readObjectList<Meaning>(
        offset,
        MeaningSchema.deserialize,
        allOffsets,
        Meaning(),
      )) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readObjectList<Phonetic>(
        offset,
        PhoneticSchema.deserialize,
        allOffsets,
        Phonetic(),
      )) as P;
    case 5:
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
  return [];
}

void _recentWordsEntityAttach(
    IsarCollection<dynamic> col, Id id, RecentWordsEntity object) {
  object.id = id;
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
      isBookMarkedEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isBookMarked',
        value: value,
      ));
    });
  }

  QueryBuilder<RecentWordsEntity, RecentWordsEntity, QAfterFilterCondition>
      meaningsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'meanings',
      ));
    });
  }

  QueryBuilder<RecentWordsEntity, RecentWordsEntity, QAfterFilterCondition>
      meaningsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'meanings',
      ));
    });
  }

  QueryBuilder<RecentWordsEntity, RecentWordsEntity, QAfterFilterCondition>
      meaningsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'meanings',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<RecentWordsEntity, RecentWordsEntity, QAfterFilterCondition>
      meaningsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'meanings',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<RecentWordsEntity, RecentWordsEntity, QAfterFilterCondition>
      meaningsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'meanings',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<RecentWordsEntity, RecentWordsEntity, QAfterFilterCondition>
      meaningsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'meanings',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<RecentWordsEntity, RecentWordsEntity, QAfterFilterCondition>
      meaningsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'meanings',
        length,
        include,
        999999,
        true,
      );
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
      return query.listLength(
        r'meanings',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
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
      phoneticsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'phonetics',
      ));
    });
  }

  QueryBuilder<RecentWordsEntity, RecentWordsEntity, QAfterFilterCondition>
      phoneticsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'phonetics',
      ));
    });
  }

  QueryBuilder<RecentWordsEntity, RecentWordsEntity, QAfterFilterCondition>
      phoneticsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'phonetics',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<RecentWordsEntity, RecentWordsEntity, QAfterFilterCondition>
      phoneticsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'phonetics',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<RecentWordsEntity, RecentWordsEntity, QAfterFilterCondition>
      phoneticsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'phonetics',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<RecentWordsEntity, RecentWordsEntity, QAfterFilterCondition>
      phoneticsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'phonetics',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<RecentWordsEntity, RecentWordsEntity, QAfterFilterCondition>
      phoneticsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'phonetics',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<RecentWordsEntity, RecentWordsEntity, QAfterFilterCondition>
      phoneticsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'phonetics',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
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
    on QueryBuilder<RecentWordsEntity, RecentWordsEntity, QFilterCondition> {
  QueryBuilder<RecentWordsEntity, RecentWordsEntity, QAfterFilterCondition>
      meaningsElement(FilterQuery<Meaning> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'meanings');
    });
  }

  QueryBuilder<RecentWordsEntity, RecentWordsEntity, QAfterFilterCondition>
      phoneticsElement(FilterQuery<Phonetic> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'phonetics');
    });
  }
}

extension RecentWordsEntityQueryLinks
    on QueryBuilder<RecentWordsEntity, RecentWordsEntity, QFilterCondition> {}

extension RecentWordsEntityQuerySortBy
    on QueryBuilder<RecentWordsEntity, RecentWordsEntity, QSortBy> {
  QueryBuilder<RecentWordsEntity, RecentWordsEntity, QAfterSortBy>
      sortByIsBookMarked() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isBookMarked', Sort.asc);
    });
  }

  QueryBuilder<RecentWordsEntity, RecentWordsEntity, QAfterSortBy>
      sortByIsBookMarkedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isBookMarked', Sort.desc);
    });
  }

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
      thenByIsBookMarked() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isBookMarked', Sort.asc);
    });
  }

  QueryBuilder<RecentWordsEntity, RecentWordsEntity, QAfterSortBy>
      thenByIsBookMarkedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isBookMarked', Sort.desc);
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
      distinctByIsBookMarked() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isBookMarked');
    });
  }

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

  QueryBuilder<RecentWordsEntity, bool, QQueryOperations>
      isBookMarkedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isBookMarked');
    });
  }

  QueryBuilder<RecentWordsEntity, List<Meaning>?, QQueryOperations>
      meaningsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'meanings');
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

  QueryBuilder<RecentWordsEntity, List<Phonetic>?, QQueryOperations>
      phoneticsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'phonetics');
    });
  }

  QueryBuilder<RecentWordsEntity, String?, QQueryOperations> wordProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'word');
    });
  }
}
