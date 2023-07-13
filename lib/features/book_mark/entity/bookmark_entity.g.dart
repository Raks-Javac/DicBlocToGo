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
  properties: {},
  estimateSize: _bookMarkEntityEstimateSize,
  serialize: _bookMarkEntitySerialize,
  deserialize: _bookMarkEntityDeserialize,
  deserializeProp: _bookMarkEntityDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {
    r'wordsObject': LinkSchema(
      id: 5268844073919918287,
      name: r'wordsObject',
      target: r'SearchWordModelResponse',
      single: true,
      linkName: r'bookMark',
    )
  },
  embeddedSchemas: {},
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
  return bytesCount;
}

void _bookMarkEntitySerialize(
  BookMarkEntity object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {}
BookMarkEntity _bookMarkEntityDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = BookMarkEntity();
  object.id = id;
  return object;
}

P _bookMarkEntityDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _bookMarkEntityGetId(BookMarkEntity object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _bookMarkEntityGetLinks(BookMarkEntity object) {
  return [object.wordsObject];
}

void _bookMarkEntityAttach(
    IsarCollection<dynamic> col, Id id, BookMarkEntity object) {
  object.id = id;
  object.wordsObject.attach(
      col, col.isar.collection<SearchWordModelResponse>(), r'wordsObject', id);
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
}

extension BookMarkEntityQueryObject
    on QueryBuilder<BookMarkEntity, BookMarkEntity, QFilterCondition> {}

extension BookMarkEntityQueryLinks
    on QueryBuilder<BookMarkEntity, BookMarkEntity, QFilterCondition> {
  QueryBuilder<BookMarkEntity, BookMarkEntity, QAfterFilterCondition>
      wordsObject(FilterQuery<SearchWordModelResponse> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'wordsObject');
    });
  }

  QueryBuilder<BookMarkEntity, BookMarkEntity, QAfterFilterCondition>
      wordsObjectIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'wordsObject', 0, true, 0, true);
    });
  }
}

extension BookMarkEntityQuerySortBy
    on QueryBuilder<BookMarkEntity, BookMarkEntity, QSortBy> {}

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
}

extension BookMarkEntityQueryWhereDistinct
    on QueryBuilder<BookMarkEntity, BookMarkEntity, QDistinct> {}

extension BookMarkEntityQueryProperty
    on QueryBuilder<BookMarkEntity, BookMarkEntity, QQueryProperty> {
  QueryBuilder<BookMarkEntity, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }
}
