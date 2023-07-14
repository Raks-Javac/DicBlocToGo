// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_word_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetSearchWordModelResponseCollection on Isar {
  IsarCollection<SearchWordModelResponse> get searchWordModelResponses =>
      this.collection();
}

const SearchWordModelResponseSchema = CollectionSchema(
  name: r'SearchWordModelResponse',
  id: -2865876600755490633,
  properties: {
    r'meanings': PropertySchema(
      id: 0,
      name: r'meanings',
      type: IsarType.objectList,
      target: r'Meaning',
    ),
    r'origin': PropertySchema(
      id: 1,
      name: r'origin',
      type: IsarType.string,
    ),
    r'phonetic': PropertySchema(
      id: 2,
      name: r'phonetic',
      type: IsarType.string,
    ),
    r'phonetics': PropertySchema(
      id: 3,
      name: r'phonetics',
      type: IsarType.objectList,
      target: r'Phonetic',
    ),
    r'word': PropertySchema(
      id: 4,
      name: r'word',
      type: IsarType.string,
    )
  },
  estimateSize: _searchWordModelResponseEstimateSize,
  serialize: _searchWordModelResponseSerialize,
  deserialize: _searchWordModelResponseDeserialize,
  deserializeProp: _searchWordModelResponseDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {
    r'Phonetic': PhoneticSchema,
    r'Meaning': MeaningSchema,
    r'Definition': DefinitionSchema
  },
  getId: _searchWordModelResponseGetId,
  getLinks: _searchWordModelResponseGetLinks,
  attach: _searchWordModelResponseAttach,
  version: '3.1.0+1',
);

int _searchWordModelResponseEstimateSize(
  SearchWordModelResponse object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.meanings.length * 3;
  {
    final offsets = allOffsets[Meaning]!;
    for (var i = 0; i < object.meanings.length; i++) {
      final value = object.meanings[i];
      bytesCount += MeaningSchema.estimateSize(value, offsets, allOffsets);
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
  bytesCount += 3 + object.phonetics.length * 3;
  {
    final offsets = allOffsets[Phonetic]!;
    for (var i = 0; i < object.phonetics.length; i++) {
      final value = object.phonetics[i];
      bytesCount += PhoneticSchema.estimateSize(value, offsets, allOffsets);
    }
  }
  bytesCount += 3 + object.word.length * 3;
  return bytesCount;
}

void _searchWordModelResponseSerialize(
  SearchWordModelResponse object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeObjectList<Meaning>(
    offsets[0],
    allOffsets,
    MeaningSchema.serialize,
    object.meanings,
  );
  writer.writeString(offsets[1], object.origin);
  writer.writeString(offsets[2], object.phonetic);
  writer.writeObjectList<Phonetic>(
    offsets[3],
    allOffsets,
    PhoneticSchema.serialize,
    object.phonetics,
  );
  writer.writeString(offsets[4], object.word);
}

SearchWordModelResponse _searchWordModelResponseDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = SearchWordModelResponse(
    meanings: reader.readObjectList<Meaning>(
          offsets[0],
          MeaningSchema.deserialize,
          allOffsets,
          Meaning(),
        ) ??
        [],
    origin: reader.readStringOrNull(offsets[1]),
    phonetic: reader.readStringOrNull(offsets[2]),
    phonetics: reader.readObjectList<Phonetic>(
          offsets[3],
          PhoneticSchema.deserialize,
          allOffsets,
          Phonetic(),
        ) ??
        [],
    word: reader.readString(offsets[4]),
  );
  object.id = id;
  return object;
}

P _searchWordModelResponseDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readObjectList<Meaning>(
            offset,
            MeaningSchema.deserialize,
            allOffsets,
            Meaning(),
          ) ??
          []) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readObjectList<Phonetic>(
            offset,
            PhoneticSchema.deserialize,
            allOffsets,
            Phonetic(),
          ) ??
          []) as P;
    case 4:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _searchWordModelResponseGetId(SearchWordModelResponse object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _searchWordModelResponseGetLinks(
    SearchWordModelResponse object) {
  return [];
}

void _searchWordModelResponseAttach(
    IsarCollection<dynamic> col, Id id, SearchWordModelResponse object) {
  object.id = id;
}

extension SearchWordModelResponseQueryWhereSort
    on QueryBuilder<SearchWordModelResponse, SearchWordModelResponse, QWhere> {
  QueryBuilder<SearchWordModelResponse, SearchWordModelResponse, QAfterWhere>
      anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension SearchWordModelResponseQueryWhere on QueryBuilder<
    SearchWordModelResponse, SearchWordModelResponse, QWhereClause> {
  QueryBuilder<SearchWordModelResponse, SearchWordModelResponse,
      QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<SearchWordModelResponse, SearchWordModelResponse,
      QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<SearchWordModelResponse, SearchWordModelResponse,
      QAfterWhereClause> idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<SearchWordModelResponse, SearchWordModelResponse,
      QAfterWhereClause> idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<SearchWordModelResponse, SearchWordModelResponse,
      QAfterWhereClause> idBetween(
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

extension SearchWordModelResponseQueryFilter on QueryBuilder<
    SearchWordModelResponse, SearchWordModelResponse, QFilterCondition> {
  QueryBuilder<SearchWordModelResponse, SearchWordModelResponse,
      QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<SearchWordModelResponse, SearchWordModelResponse,
      QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<SearchWordModelResponse, SearchWordModelResponse,
      QAfterFilterCondition> idLessThan(
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

  QueryBuilder<SearchWordModelResponse, SearchWordModelResponse,
      QAfterFilterCondition> idBetween(
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

  QueryBuilder<SearchWordModelResponse, SearchWordModelResponse,
      QAfterFilterCondition> meaningsLengthEqualTo(int length) {
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

  QueryBuilder<SearchWordModelResponse, SearchWordModelResponse,
      QAfterFilterCondition> meaningsIsEmpty() {
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

  QueryBuilder<SearchWordModelResponse, SearchWordModelResponse,
      QAfterFilterCondition> meaningsIsNotEmpty() {
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

  QueryBuilder<SearchWordModelResponse, SearchWordModelResponse,
      QAfterFilterCondition> meaningsLengthLessThan(
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

  QueryBuilder<SearchWordModelResponse, SearchWordModelResponse,
      QAfterFilterCondition> meaningsLengthGreaterThan(
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

  QueryBuilder<SearchWordModelResponse, SearchWordModelResponse,
      QAfterFilterCondition> meaningsLengthBetween(
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

  QueryBuilder<SearchWordModelResponse, SearchWordModelResponse,
      QAfterFilterCondition> originIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'origin',
      ));
    });
  }

  QueryBuilder<SearchWordModelResponse, SearchWordModelResponse,
      QAfterFilterCondition> originIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'origin',
      ));
    });
  }

  QueryBuilder<SearchWordModelResponse, SearchWordModelResponse,
      QAfterFilterCondition> originEqualTo(
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

  QueryBuilder<SearchWordModelResponse, SearchWordModelResponse,
      QAfterFilterCondition> originGreaterThan(
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

  QueryBuilder<SearchWordModelResponse, SearchWordModelResponse,
      QAfterFilterCondition> originLessThan(
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

  QueryBuilder<SearchWordModelResponse, SearchWordModelResponse,
      QAfterFilterCondition> originBetween(
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

  QueryBuilder<SearchWordModelResponse, SearchWordModelResponse,
      QAfterFilterCondition> originStartsWith(
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

  QueryBuilder<SearchWordModelResponse, SearchWordModelResponse,
      QAfterFilterCondition> originEndsWith(
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

  QueryBuilder<SearchWordModelResponse, SearchWordModelResponse,
          QAfterFilterCondition>
      originContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'origin',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SearchWordModelResponse, SearchWordModelResponse,
          QAfterFilterCondition>
      originMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'origin',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SearchWordModelResponse, SearchWordModelResponse,
      QAfterFilterCondition> originIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'origin',
        value: '',
      ));
    });
  }

  QueryBuilder<SearchWordModelResponse, SearchWordModelResponse,
      QAfterFilterCondition> originIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'origin',
        value: '',
      ));
    });
  }

  QueryBuilder<SearchWordModelResponse, SearchWordModelResponse,
      QAfterFilterCondition> phoneticIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'phonetic',
      ));
    });
  }

  QueryBuilder<SearchWordModelResponse, SearchWordModelResponse,
      QAfterFilterCondition> phoneticIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'phonetic',
      ));
    });
  }

  QueryBuilder<SearchWordModelResponse, SearchWordModelResponse,
      QAfterFilterCondition> phoneticEqualTo(
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

  QueryBuilder<SearchWordModelResponse, SearchWordModelResponse,
      QAfterFilterCondition> phoneticGreaterThan(
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

  QueryBuilder<SearchWordModelResponse, SearchWordModelResponse,
      QAfterFilterCondition> phoneticLessThan(
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

  QueryBuilder<SearchWordModelResponse, SearchWordModelResponse,
      QAfterFilterCondition> phoneticBetween(
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

  QueryBuilder<SearchWordModelResponse, SearchWordModelResponse,
      QAfterFilterCondition> phoneticStartsWith(
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

  QueryBuilder<SearchWordModelResponse, SearchWordModelResponse,
      QAfterFilterCondition> phoneticEndsWith(
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

  QueryBuilder<SearchWordModelResponse, SearchWordModelResponse,
          QAfterFilterCondition>
      phoneticContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'phonetic',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SearchWordModelResponse, SearchWordModelResponse,
          QAfterFilterCondition>
      phoneticMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'phonetic',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SearchWordModelResponse, SearchWordModelResponse,
      QAfterFilterCondition> phoneticIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'phonetic',
        value: '',
      ));
    });
  }

  QueryBuilder<SearchWordModelResponse, SearchWordModelResponse,
      QAfterFilterCondition> phoneticIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'phonetic',
        value: '',
      ));
    });
  }

  QueryBuilder<SearchWordModelResponse, SearchWordModelResponse,
      QAfterFilterCondition> phoneticsLengthEqualTo(int length) {
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

  QueryBuilder<SearchWordModelResponse, SearchWordModelResponse,
      QAfterFilterCondition> phoneticsIsEmpty() {
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

  QueryBuilder<SearchWordModelResponse, SearchWordModelResponse,
      QAfterFilterCondition> phoneticsIsNotEmpty() {
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

  QueryBuilder<SearchWordModelResponse, SearchWordModelResponse,
      QAfterFilterCondition> phoneticsLengthLessThan(
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

  QueryBuilder<SearchWordModelResponse, SearchWordModelResponse,
      QAfterFilterCondition> phoneticsLengthGreaterThan(
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

  QueryBuilder<SearchWordModelResponse, SearchWordModelResponse,
      QAfterFilterCondition> phoneticsLengthBetween(
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

  QueryBuilder<SearchWordModelResponse, SearchWordModelResponse,
      QAfterFilterCondition> wordEqualTo(
    String value, {
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

  QueryBuilder<SearchWordModelResponse, SearchWordModelResponse,
      QAfterFilterCondition> wordGreaterThan(
    String value, {
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

  QueryBuilder<SearchWordModelResponse, SearchWordModelResponse,
      QAfterFilterCondition> wordLessThan(
    String value, {
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

  QueryBuilder<SearchWordModelResponse, SearchWordModelResponse,
      QAfterFilterCondition> wordBetween(
    String lower,
    String upper, {
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

  QueryBuilder<SearchWordModelResponse, SearchWordModelResponse,
      QAfterFilterCondition> wordStartsWith(
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

  QueryBuilder<SearchWordModelResponse, SearchWordModelResponse,
      QAfterFilterCondition> wordEndsWith(
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

  QueryBuilder<SearchWordModelResponse, SearchWordModelResponse,
          QAfterFilterCondition>
      wordContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'word',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SearchWordModelResponse, SearchWordModelResponse,
          QAfterFilterCondition>
      wordMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'word',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SearchWordModelResponse, SearchWordModelResponse,
      QAfterFilterCondition> wordIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'word',
        value: '',
      ));
    });
  }

  QueryBuilder<SearchWordModelResponse, SearchWordModelResponse,
      QAfterFilterCondition> wordIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'word',
        value: '',
      ));
    });
  }
}

extension SearchWordModelResponseQueryObject on QueryBuilder<
    SearchWordModelResponse, SearchWordModelResponse, QFilterCondition> {
  QueryBuilder<SearchWordModelResponse, SearchWordModelResponse,
      QAfterFilterCondition> meaningsElement(FilterQuery<Meaning> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'meanings');
    });
  }

  QueryBuilder<SearchWordModelResponse, SearchWordModelResponse,
      QAfterFilterCondition> phoneticsElement(FilterQuery<Phonetic> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'phonetics');
    });
  }
}

extension SearchWordModelResponseQueryLinks on QueryBuilder<
    SearchWordModelResponse, SearchWordModelResponse, QFilterCondition> {}

extension SearchWordModelResponseQuerySortBy
    on QueryBuilder<SearchWordModelResponse, SearchWordModelResponse, QSortBy> {
  QueryBuilder<SearchWordModelResponse, SearchWordModelResponse, QAfterSortBy>
      sortByOrigin() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'origin', Sort.asc);
    });
  }

  QueryBuilder<SearchWordModelResponse, SearchWordModelResponse, QAfterSortBy>
      sortByOriginDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'origin', Sort.desc);
    });
  }

  QueryBuilder<SearchWordModelResponse, SearchWordModelResponse, QAfterSortBy>
      sortByPhonetic() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phonetic', Sort.asc);
    });
  }

  QueryBuilder<SearchWordModelResponse, SearchWordModelResponse, QAfterSortBy>
      sortByPhoneticDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phonetic', Sort.desc);
    });
  }

  QueryBuilder<SearchWordModelResponse, SearchWordModelResponse, QAfterSortBy>
      sortByWord() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'word', Sort.asc);
    });
  }

  QueryBuilder<SearchWordModelResponse, SearchWordModelResponse, QAfterSortBy>
      sortByWordDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'word', Sort.desc);
    });
  }
}

extension SearchWordModelResponseQuerySortThenBy on QueryBuilder<
    SearchWordModelResponse, SearchWordModelResponse, QSortThenBy> {
  QueryBuilder<SearchWordModelResponse, SearchWordModelResponse, QAfterSortBy>
      thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<SearchWordModelResponse, SearchWordModelResponse, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<SearchWordModelResponse, SearchWordModelResponse, QAfterSortBy>
      thenByOrigin() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'origin', Sort.asc);
    });
  }

  QueryBuilder<SearchWordModelResponse, SearchWordModelResponse, QAfterSortBy>
      thenByOriginDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'origin', Sort.desc);
    });
  }

  QueryBuilder<SearchWordModelResponse, SearchWordModelResponse, QAfterSortBy>
      thenByPhonetic() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phonetic', Sort.asc);
    });
  }

  QueryBuilder<SearchWordModelResponse, SearchWordModelResponse, QAfterSortBy>
      thenByPhoneticDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phonetic', Sort.desc);
    });
  }

  QueryBuilder<SearchWordModelResponse, SearchWordModelResponse, QAfterSortBy>
      thenByWord() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'word', Sort.asc);
    });
  }

  QueryBuilder<SearchWordModelResponse, SearchWordModelResponse, QAfterSortBy>
      thenByWordDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'word', Sort.desc);
    });
  }
}

extension SearchWordModelResponseQueryWhereDistinct on QueryBuilder<
    SearchWordModelResponse, SearchWordModelResponse, QDistinct> {
  QueryBuilder<SearchWordModelResponse, SearchWordModelResponse, QDistinct>
      distinctByOrigin({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'origin', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SearchWordModelResponse, SearchWordModelResponse, QDistinct>
      distinctByPhonetic({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'phonetic', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SearchWordModelResponse, SearchWordModelResponse, QDistinct>
      distinctByWord({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'word', caseSensitive: caseSensitive);
    });
  }
}

extension SearchWordModelResponseQueryProperty on QueryBuilder<
    SearchWordModelResponse, SearchWordModelResponse, QQueryProperty> {
  QueryBuilder<SearchWordModelResponse, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<SearchWordModelResponse, List<Meaning>, QQueryOperations>
      meaningsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'meanings');
    });
  }

  QueryBuilder<SearchWordModelResponse, String?, QQueryOperations>
      originProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'origin');
    });
  }

  QueryBuilder<SearchWordModelResponse, String?, QQueryOperations>
      phoneticProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'phonetic');
    });
  }

  QueryBuilder<SearchWordModelResponse, List<Phonetic>, QQueryOperations>
      phoneticsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'phonetics');
    });
  }

  QueryBuilder<SearchWordModelResponse, String, QQueryOperations>
      wordProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'word');
    });
  }
}
