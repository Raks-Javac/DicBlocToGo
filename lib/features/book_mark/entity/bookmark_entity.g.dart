// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bookmark_entity.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetBookMarkEntityCollection on Isar {
  IsarCollection<BookMarkEntity> get bookMarkEntitys => this.collection();
}

const BookMarkEntitySchema = CollectionSchema(
  name: r'BookMarkEntity',
  id: -4122907229797768104,
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
    r'searchWordBookMarked': PropertySchema(
      id: 5,
      name: r'searchWordBookMarked',
      type: IsarType.string,
    ),
    r'selected': PropertySchema(
      id: 6,
      name: r'selected',
      type: IsarType.bool,
    ),
    r'word': PropertySchema(
      id: 7,
      name: r'word',
      type: IsarType.string,
    )
  },
  estimateSize: _bookMarkEntityEstimateSize,
  serialize: _bookMarkEntitySerialize,
  deserialize: _bookMarkEntityDeserialize,
  deserializeProp: _bookMarkEntityDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {
    r'Phonetic': PhoneticSchema,
    r'Meaning': MeaningSchema,
    r'Definition': DefinitionSchema
  },
  getId: _bookMarkEntityGetId,
  getLinks: _bookMarkEntityGetLinks,
  attach: _bookMarkEntityAttach,
  version: '3.1.0+1',
);

int _bookMarkEntityEstimateSize(
  BookMarkEntity object,
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
    final value = object.searchWordBookMarked;
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

void _bookMarkEntitySerialize(
  BookMarkEntity object,
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
  writer.writeString(offsets[5], object.searchWordBookMarked);
  writer.writeBool(offsets[6], object.selected);
  writer.writeString(offsets[7], object.word);
}

BookMarkEntity _bookMarkEntityDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = BookMarkEntity();
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
  object.searchWordBookMarked = reader.readStringOrNull(offsets[5]);
  object.selected = reader.readBool(offsets[6]);
  object.word = reader.readStringOrNull(offsets[7]);
  return object;
}

P _bookMarkEntityDeserializeProp<P>(
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
    case 6:
      return (reader.readBool(offset)) as P;
    case 7:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _bookMarkEntityGetId(BookMarkEntity object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _bookMarkEntityGetLinks(BookMarkEntity object) {
  return [];
}

void _bookMarkEntityAttach(
    IsarCollection<dynamic> col, Id id, BookMarkEntity object) {
  object.id = id;
}

extension BookMarkEntityQueryWhereSort
    on QueryBuilder<BookMarkEntity, BookMarkEntity, QWhere> {
  QueryBuilder<BookMarkEntity, BookMarkEntity, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension BookMarkEntityQueryWhere
    on QueryBuilder<BookMarkEntity, BookMarkEntity, QWhereClause> {
  QueryBuilder<BookMarkEntity, BookMarkEntity, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<BookMarkEntity, BookMarkEntity, QAfterWhereClause> idNotEqualTo(
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

  QueryBuilder<BookMarkEntity, BookMarkEntity, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<BookMarkEntity, BookMarkEntity, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<BookMarkEntity, BookMarkEntity, QAfterWhereClause> idBetween(
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

extension BookMarkEntityQueryFilter
    on QueryBuilder<BookMarkEntity, BookMarkEntity, QFilterCondition> {
  QueryBuilder<BookMarkEntity, BookMarkEntity, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<BookMarkEntity, BookMarkEntity, QAfterFilterCondition>
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

  QueryBuilder<BookMarkEntity, BookMarkEntity, QAfterFilterCondition>
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

  QueryBuilder<BookMarkEntity, BookMarkEntity, QAfterFilterCondition> idBetween(
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

  QueryBuilder<BookMarkEntity, BookMarkEntity, QAfterFilterCondition>
      isBookMarkedEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isBookMarked',
        value: value,
      ));
    });
  }

  QueryBuilder<BookMarkEntity, BookMarkEntity, QAfterFilterCondition>
      meaningsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'meanings',
      ));
    });
  }

  QueryBuilder<BookMarkEntity, BookMarkEntity, QAfterFilterCondition>
      meaningsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'meanings',
      ));
    });
  }

  QueryBuilder<BookMarkEntity, BookMarkEntity, QAfterFilterCondition>
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

  QueryBuilder<BookMarkEntity, BookMarkEntity, QAfterFilterCondition>
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

  QueryBuilder<BookMarkEntity, BookMarkEntity, QAfterFilterCondition>
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

  QueryBuilder<BookMarkEntity, BookMarkEntity, QAfterFilterCondition>
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

  QueryBuilder<BookMarkEntity, BookMarkEntity, QAfterFilterCondition>
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

  QueryBuilder<BookMarkEntity, BookMarkEntity, QAfterFilterCondition>
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

  QueryBuilder<BookMarkEntity, BookMarkEntity, QAfterFilterCondition>
      originIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'origin',
      ));
    });
  }

  QueryBuilder<BookMarkEntity, BookMarkEntity, QAfterFilterCondition>
      originIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'origin',
      ));
    });
  }

  QueryBuilder<BookMarkEntity, BookMarkEntity, QAfterFilterCondition>
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

  QueryBuilder<BookMarkEntity, BookMarkEntity, QAfterFilterCondition>
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

  QueryBuilder<BookMarkEntity, BookMarkEntity, QAfterFilterCondition>
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

  QueryBuilder<BookMarkEntity, BookMarkEntity, QAfterFilterCondition>
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

  QueryBuilder<BookMarkEntity, BookMarkEntity, QAfterFilterCondition>
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

  QueryBuilder<BookMarkEntity, BookMarkEntity, QAfterFilterCondition>
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

  QueryBuilder<BookMarkEntity, BookMarkEntity, QAfterFilterCondition>
      originContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'origin',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BookMarkEntity, BookMarkEntity, QAfterFilterCondition>
      originMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'origin',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BookMarkEntity, BookMarkEntity, QAfterFilterCondition>
      originIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'origin',
        value: '',
      ));
    });
  }

  QueryBuilder<BookMarkEntity, BookMarkEntity, QAfterFilterCondition>
      originIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'origin',
        value: '',
      ));
    });
  }

  QueryBuilder<BookMarkEntity, BookMarkEntity, QAfterFilterCondition>
      phoneticIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'phonetic',
      ));
    });
  }

  QueryBuilder<BookMarkEntity, BookMarkEntity, QAfterFilterCondition>
      phoneticIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'phonetic',
      ));
    });
  }

  QueryBuilder<BookMarkEntity, BookMarkEntity, QAfterFilterCondition>
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

  QueryBuilder<BookMarkEntity, BookMarkEntity, QAfterFilterCondition>
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

  QueryBuilder<BookMarkEntity, BookMarkEntity, QAfterFilterCondition>
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

  QueryBuilder<BookMarkEntity, BookMarkEntity, QAfterFilterCondition>
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

  QueryBuilder<BookMarkEntity, BookMarkEntity, QAfterFilterCondition>
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

  QueryBuilder<BookMarkEntity, BookMarkEntity, QAfterFilterCondition>
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

  QueryBuilder<BookMarkEntity, BookMarkEntity, QAfterFilterCondition>
      phoneticContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'phonetic',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BookMarkEntity, BookMarkEntity, QAfterFilterCondition>
      phoneticMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'phonetic',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BookMarkEntity, BookMarkEntity, QAfterFilterCondition>
      phoneticIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'phonetic',
        value: '',
      ));
    });
  }

  QueryBuilder<BookMarkEntity, BookMarkEntity, QAfterFilterCondition>
      phoneticIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'phonetic',
        value: '',
      ));
    });
  }

  QueryBuilder<BookMarkEntity, BookMarkEntity, QAfterFilterCondition>
      phoneticsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'phonetics',
      ));
    });
  }

  QueryBuilder<BookMarkEntity, BookMarkEntity, QAfterFilterCondition>
      phoneticsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'phonetics',
      ));
    });
  }

  QueryBuilder<BookMarkEntity, BookMarkEntity, QAfterFilterCondition>
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

  QueryBuilder<BookMarkEntity, BookMarkEntity, QAfterFilterCondition>
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

  QueryBuilder<BookMarkEntity, BookMarkEntity, QAfterFilterCondition>
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

  QueryBuilder<BookMarkEntity, BookMarkEntity, QAfterFilterCondition>
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

  QueryBuilder<BookMarkEntity, BookMarkEntity, QAfterFilterCondition>
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

  QueryBuilder<BookMarkEntity, BookMarkEntity, QAfterFilterCondition>
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

  QueryBuilder<BookMarkEntity, BookMarkEntity, QAfterFilterCondition>
      searchWordBookMarkedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'searchWordBookMarked',
      ));
    });
  }

  QueryBuilder<BookMarkEntity, BookMarkEntity, QAfterFilterCondition>
      searchWordBookMarkedIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'searchWordBookMarked',
      ));
    });
  }

  QueryBuilder<BookMarkEntity, BookMarkEntity, QAfterFilterCondition>
      searchWordBookMarkedEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'searchWordBookMarked',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BookMarkEntity, BookMarkEntity, QAfterFilterCondition>
      searchWordBookMarkedGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'searchWordBookMarked',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BookMarkEntity, BookMarkEntity, QAfterFilterCondition>
      searchWordBookMarkedLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'searchWordBookMarked',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BookMarkEntity, BookMarkEntity, QAfterFilterCondition>
      searchWordBookMarkedBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'searchWordBookMarked',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BookMarkEntity, BookMarkEntity, QAfterFilterCondition>
      searchWordBookMarkedStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'searchWordBookMarked',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BookMarkEntity, BookMarkEntity, QAfterFilterCondition>
      searchWordBookMarkedEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'searchWordBookMarked',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BookMarkEntity, BookMarkEntity, QAfterFilterCondition>
      searchWordBookMarkedContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'searchWordBookMarked',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BookMarkEntity, BookMarkEntity, QAfterFilterCondition>
      searchWordBookMarkedMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'searchWordBookMarked',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BookMarkEntity, BookMarkEntity, QAfterFilterCondition>
      searchWordBookMarkedIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'searchWordBookMarked',
        value: '',
      ));
    });
  }

  QueryBuilder<BookMarkEntity, BookMarkEntity, QAfterFilterCondition>
      searchWordBookMarkedIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'searchWordBookMarked',
        value: '',
      ));
    });
  }

  QueryBuilder<BookMarkEntity, BookMarkEntity, QAfterFilterCondition>
      selectedEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'selected',
        value: value,
      ));
    });
  }

  QueryBuilder<BookMarkEntity, BookMarkEntity, QAfterFilterCondition>
      wordIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'word',
      ));
    });
  }

  QueryBuilder<BookMarkEntity, BookMarkEntity, QAfterFilterCondition>
      wordIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'word',
      ));
    });
  }

  QueryBuilder<BookMarkEntity, BookMarkEntity, QAfterFilterCondition>
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

  QueryBuilder<BookMarkEntity, BookMarkEntity, QAfterFilterCondition>
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

  QueryBuilder<BookMarkEntity, BookMarkEntity, QAfterFilterCondition>
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

  QueryBuilder<BookMarkEntity, BookMarkEntity, QAfterFilterCondition>
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

  QueryBuilder<BookMarkEntity, BookMarkEntity, QAfterFilterCondition>
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

  QueryBuilder<BookMarkEntity, BookMarkEntity, QAfterFilterCondition>
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

  QueryBuilder<BookMarkEntity, BookMarkEntity, QAfterFilterCondition>
      wordContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'word',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BookMarkEntity, BookMarkEntity, QAfterFilterCondition>
      wordMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'word',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BookMarkEntity, BookMarkEntity, QAfterFilterCondition>
      wordIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'word',
        value: '',
      ));
    });
  }

  QueryBuilder<BookMarkEntity, BookMarkEntity, QAfterFilterCondition>
      wordIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'word',
        value: '',
      ));
    });
  }
}

extension BookMarkEntityQueryObject
    on QueryBuilder<BookMarkEntity, BookMarkEntity, QFilterCondition> {
  QueryBuilder<BookMarkEntity, BookMarkEntity, QAfterFilterCondition>
      meaningsElement(FilterQuery<Meaning> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'meanings');
    });
  }

  QueryBuilder<BookMarkEntity, BookMarkEntity, QAfterFilterCondition>
      phoneticsElement(FilterQuery<Phonetic> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'phonetics');
    });
  }
}

extension BookMarkEntityQueryLinks
    on QueryBuilder<BookMarkEntity, BookMarkEntity, QFilterCondition> {}

extension BookMarkEntityQuerySortBy
    on QueryBuilder<BookMarkEntity, BookMarkEntity, QSortBy> {
  QueryBuilder<BookMarkEntity, BookMarkEntity, QAfterSortBy>
      sortByIsBookMarked() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isBookMarked', Sort.asc);
    });
  }

  QueryBuilder<BookMarkEntity, BookMarkEntity, QAfterSortBy>
      sortByIsBookMarkedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isBookMarked', Sort.desc);
    });
  }

  QueryBuilder<BookMarkEntity, BookMarkEntity, QAfterSortBy> sortByOrigin() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'origin', Sort.asc);
    });
  }

  QueryBuilder<BookMarkEntity, BookMarkEntity, QAfterSortBy>
      sortByOriginDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'origin', Sort.desc);
    });
  }

  QueryBuilder<BookMarkEntity, BookMarkEntity, QAfterSortBy> sortByPhonetic() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phonetic', Sort.asc);
    });
  }

  QueryBuilder<BookMarkEntity, BookMarkEntity, QAfterSortBy>
      sortByPhoneticDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phonetic', Sort.desc);
    });
  }

  QueryBuilder<BookMarkEntity, BookMarkEntity, QAfterSortBy>
      sortBySearchWordBookMarked() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'searchWordBookMarked', Sort.asc);
    });
  }

  QueryBuilder<BookMarkEntity, BookMarkEntity, QAfterSortBy>
      sortBySearchWordBookMarkedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'searchWordBookMarked', Sort.desc);
    });
  }

  QueryBuilder<BookMarkEntity, BookMarkEntity, QAfterSortBy> sortBySelected() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'selected', Sort.asc);
    });
  }

  QueryBuilder<BookMarkEntity, BookMarkEntity, QAfterSortBy>
      sortBySelectedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'selected', Sort.desc);
    });
  }

  QueryBuilder<BookMarkEntity, BookMarkEntity, QAfterSortBy> sortByWord() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'word', Sort.asc);
    });
  }

  QueryBuilder<BookMarkEntity, BookMarkEntity, QAfterSortBy> sortByWordDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'word', Sort.desc);
    });
  }
}

extension BookMarkEntityQuerySortThenBy
    on QueryBuilder<BookMarkEntity, BookMarkEntity, QSortThenBy> {
  QueryBuilder<BookMarkEntity, BookMarkEntity, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<BookMarkEntity, BookMarkEntity, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<BookMarkEntity, BookMarkEntity, QAfterSortBy>
      thenByIsBookMarked() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isBookMarked', Sort.asc);
    });
  }

  QueryBuilder<BookMarkEntity, BookMarkEntity, QAfterSortBy>
      thenByIsBookMarkedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isBookMarked', Sort.desc);
    });
  }

  QueryBuilder<BookMarkEntity, BookMarkEntity, QAfterSortBy> thenByOrigin() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'origin', Sort.asc);
    });
  }

  QueryBuilder<BookMarkEntity, BookMarkEntity, QAfterSortBy>
      thenByOriginDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'origin', Sort.desc);
    });
  }

  QueryBuilder<BookMarkEntity, BookMarkEntity, QAfterSortBy> thenByPhonetic() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phonetic', Sort.asc);
    });
  }

  QueryBuilder<BookMarkEntity, BookMarkEntity, QAfterSortBy>
      thenByPhoneticDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phonetic', Sort.desc);
    });
  }

  QueryBuilder<BookMarkEntity, BookMarkEntity, QAfterSortBy>
      thenBySearchWordBookMarked() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'searchWordBookMarked', Sort.asc);
    });
  }

  QueryBuilder<BookMarkEntity, BookMarkEntity, QAfterSortBy>
      thenBySearchWordBookMarkedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'searchWordBookMarked', Sort.desc);
    });
  }

  QueryBuilder<BookMarkEntity, BookMarkEntity, QAfterSortBy> thenBySelected() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'selected', Sort.asc);
    });
  }

  QueryBuilder<BookMarkEntity, BookMarkEntity, QAfterSortBy>
      thenBySelectedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'selected', Sort.desc);
    });
  }

  QueryBuilder<BookMarkEntity, BookMarkEntity, QAfterSortBy> thenByWord() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'word', Sort.asc);
    });
  }

  QueryBuilder<BookMarkEntity, BookMarkEntity, QAfterSortBy> thenByWordDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'word', Sort.desc);
    });
  }
}

extension BookMarkEntityQueryWhereDistinct
    on QueryBuilder<BookMarkEntity, BookMarkEntity, QDistinct> {
  QueryBuilder<BookMarkEntity, BookMarkEntity, QDistinct>
      distinctByIsBookMarked() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isBookMarked');
    });
  }

  QueryBuilder<BookMarkEntity, BookMarkEntity, QDistinct> distinctByOrigin(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'origin', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BookMarkEntity, BookMarkEntity, QDistinct> distinctByPhonetic(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'phonetic', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BookMarkEntity, BookMarkEntity, QDistinct>
      distinctBySearchWordBookMarked({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'searchWordBookMarked',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BookMarkEntity, BookMarkEntity, QDistinct> distinctBySelected() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'selected');
    });
  }

  QueryBuilder<BookMarkEntity, BookMarkEntity, QDistinct> distinctByWord(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'word', caseSensitive: caseSensitive);
    });
  }
}

extension BookMarkEntityQueryProperty
    on QueryBuilder<BookMarkEntity, BookMarkEntity, QQueryProperty> {
  QueryBuilder<BookMarkEntity, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<BookMarkEntity, bool, QQueryOperations> isBookMarkedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isBookMarked');
    });
  }

  QueryBuilder<BookMarkEntity, List<Meaning>?, QQueryOperations>
      meaningsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'meanings');
    });
  }

  QueryBuilder<BookMarkEntity, String?, QQueryOperations> originProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'origin');
    });
  }

  QueryBuilder<BookMarkEntity, String?, QQueryOperations> phoneticProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'phonetic');
    });
  }

  QueryBuilder<BookMarkEntity, List<Phonetic>?, QQueryOperations>
      phoneticsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'phonetics');
    });
  }

  QueryBuilder<BookMarkEntity, String?, QQueryOperations>
      searchWordBookMarkedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'searchWordBookMarked');
    });
  }

  QueryBuilder<BookMarkEntity, bool, QQueryOperations> selectedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'selected');
    });
  }

  QueryBuilder<BookMarkEntity, String?, QQueryOperations> wordProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'word');
    });
  }
}
