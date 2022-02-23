// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'isar_settings.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// ignore_for_file: duplicate_ignore, non_constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast

extension GetIsarSettingsCollection on Isar {
  IsarCollection<IsarSettings> get settings {
    return getCollection('IsarSettings');
  }
}

final IsarSettingsSchema = CollectionSchema(
  name: 'IsarSettings',
  schema:
      '{"name":"IsarSettings","idName":"id","properties":[{"name":"hashCode","type":"Long"},{"name":"stringify","type":"Bool"},{"name":"toggleDarkMode","type":"Bool"}],"indexes":[],"links":[]}',
  nativeAdapter: const _IsarSettingsNativeAdapter(),
  webAdapter: const _IsarSettingsWebAdapter(),
  idName: 'id',
  propertyIds: {'hashCode': 0, 'stringify': 1, 'toggleDarkMode': 2},
  listProperties: {},
  indexIds: {},
  indexTypes: {},
  linkIds: {},
  backlinkIds: {},
  linkedCollections: [],
  getId: (obj) {
    if (obj.id == Isar.autoIncrement) {
      return null;
    } else {
      return obj.id;
    }
  },
  setId: null,
  getLinks: (obj) => [],
  version: 2,
);

class _IsarSettingsWebAdapter extends IsarWebTypeAdapter<IsarSettings> {
  const _IsarSettingsWebAdapter();

  @override
  Object serialize(
      IsarCollection<IsarSettings> collection, IsarSettings object) {
    final jsObj = IsarNative.newJsObject();
    IsarNative.jsObjectSet(jsObj, 'hashCode', object.hashCode);
    IsarNative.jsObjectSet(jsObj, 'id', object.id);
    IsarNative.jsObjectSet(jsObj, 'stringify', object.stringify);
    IsarNative.jsObjectSet(jsObj, 'toggleDarkMode', object.toggleDarkMode);
    return jsObj;
  }

  @override
  IsarSettings deserialize(
      IsarCollection<IsarSettings> collection, dynamic jsObj) {
    final object = IsarSettings(
      id: IsarNative.jsObjectGet(jsObj, 'id'),
      toggleDarkMode: IsarNative.jsObjectGet(jsObj, 'toggleDarkMode'),
    );
    return object;
  }

  @override
  P deserializeProperty<P>(Object jsObj, String propertyName) {
    switch (propertyName) {
      case 'hashCode':
        return (IsarNative.jsObjectGet(jsObj, 'hashCode') ??
            double.negativeInfinity) as P;
      case 'id':
        return (IsarNative.jsObjectGet(jsObj, 'id')) as P;
      case 'stringify':
        return (IsarNative.jsObjectGet(jsObj, 'stringify') ?? false) as P;
      case 'toggleDarkMode':
        return (IsarNative.jsObjectGet(jsObj, 'toggleDarkMode')) as P;
      default:
        throw 'Illegal propertyName';
    }
  }

  @override
  void attachLinks(Isar isar, int id, IsarSettings object) {}
}

class _IsarSettingsNativeAdapter extends IsarNativeTypeAdapter<IsarSettings> {
  const _IsarSettingsNativeAdapter();

  @override
  void serialize(
      IsarCollection<IsarSettings> collection,
      IsarRawObject rawObj,
      IsarSettings object,
      int staticSize,
      List<int> offsets,
      AdapterAlloc alloc) {
    var dynamicSize = 0;
    final value0 = object.hashCode;
    final _hashCode = value0;
    final value1 = object.stringify;
    final _stringify = value1;
    final value2 = object.toggleDarkMode;
    final _toggleDarkMode = value2;
    final size = staticSize + dynamicSize;

    rawObj.buffer = alloc(size);
    rawObj.buffer_length = size;
    final buffer = IsarNative.bufAsBytes(rawObj.buffer, size);
    final writer = IsarBinaryWriter(buffer, staticSize);
    writer.writeLong(offsets[0], _hashCode);
    writer.writeBool(offsets[1], _stringify);
    writer.writeBool(offsets[2], _toggleDarkMode);
  }

  @override
  IsarSettings deserialize(IsarCollection<IsarSettings> collection, int id,
      IsarBinaryReader reader, List<int> offsets) {
    final object = IsarSettings(
      id: id,
      toggleDarkMode: reader.readBoolOrNull(offsets[2]),
    );
    return object;
  }

  @override
  P deserializeProperty<P>(
      int id, IsarBinaryReader reader, int propertyIndex, int offset) {
    switch (propertyIndex) {
      case -1:
        return id as P;
      case 0:
        return (reader.readLong(offset)) as P;
      case 1:
        return (reader.readBool(offset)) as P;
      case 2:
        return (reader.readBoolOrNull(offset)) as P;
      default:
        throw 'Illegal propertyIndex';
    }
  }

  @override
  void attachLinks(Isar isar, int id, IsarSettings object) {}
}

extension IsarSettingsQueryWhereSort
    on QueryBuilder<IsarSettings, IsarSettings, QWhere> {
  QueryBuilder<IsarSettings, IsarSettings, QAfterWhere> anyId() {
    return addWhereClauseInternal(const WhereClause(indexName: null));
  }
}

extension IsarSettingsQueryWhere
    on QueryBuilder<IsarSettings, IsarSettings, QWhereClause> {
  QueryBuilder<IsarSettings, IsarSettings, QAfterWhereClause> idEqualTo(
      int? id) {
    return addWhereClauseInternal(WhereClause(
      indexName: null,
      lower: [id],
      includeLower: true,
      upper: [id],
      includeUpper: true,
    ));
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterWhereClause> idNotEqualTo(
      int? id) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(WhereClause(
        indexName: null,
        upper: [id],
        includeUpper: false,
      )).addWhereClauseInternal(WhereClause(
        indexName: null,
        lower: [id],
        includeLower: false,
      ));
    } else {
      return addWhereClauseInternal(WhereClause(
        indexName: null,
        lower: [id],
        includeLower: false,
      )).addWhereClauseInternal(WhereClause(
        indexName: null,
        upper: [id],
        includeUpper: false,
      ));
    }
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterWhereClause> idGreaterThan(
    int? id, {
    bool include = false,
  }) {
    return addWhereClauseInternal(WhereClause(
      indexName: null,
      lower: [id],
      includeLower: include,
    ));
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterWhereClause> idLessThan(
    int? id, {
    bool include = false,
  }) {
    return addWhereClauseInternal(WhereClause(
      indexName: null,
      upper: [id],
      includeUpper: include,
    ));
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterWhereClause> idBetween(
    int? lowerId,
    int? upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addWhereClauseInternal(WhereClause(
      indexName: null,
      lower: [lowerId],
      includeLower: includeLower,
      upper: [upperId],
      includeUpper: includeUpper,
    ));
  }
}

extension IsarSettingsQueryFilter
    on QueryBuilder<IsarSettings, IsarSettings, QFilterCondition> {
  QueryBuilder<IsarSettings, IsarSettings, QAfterFilterCondition>
      hashCodeEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'hashCode',
      value: value,
    ));
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterFilterCondition>
      hashCodeGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'hashCode',
      value: value,
    ));
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterFilterCondition>
      hashCodeLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'hashCode',
      value: value,
    ));
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterFilterCondition>
      hashCodeBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'hashCode',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterFilterCondition> idIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'id',
      value: null,
    ));
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterFilterCondition> idEqualTo(
      int? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterFilterCondition> idGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterFilterCondition> idLessThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterFilterCondition> idBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'id',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterFilterCondition>
      stringifyEqualTo(bool value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'stringify',
      value: value,
    ));
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterFilterCondition>
      toggleDarkModeIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'toggleDarkMode',
      value: null,
    ));
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterFilterCondition>
      toggleDarkModeEqualTo(bool? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'toggleDarkMode',
      value: value,
    ));
  }
}

extension IsarSettingsQueryLinks
    on QueryBuilder<IsarSettings, IsarSettings, QFilterCondition> {}

extension IsarSettingsQueryWhereSortBy
    on QueryBuilder<IsarSettings, IsarSettings, QSortBy> {
  QueryBuilder<IsarSettings, IsarSettings, QAfterSortBy> sortByHashCode() {
    return addSortByInternal('hashCode', Sort.asc);
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterSortBy> sortByHashCodeDesc() {
    return addSortByInternal('hashCode', Sort.desc);
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterSortBy> sortById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterSortBy> sortByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterSortBy> sortByStringify() {
    return addSortByInternal('stringify', Sort.asc);
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterSortBy> sortByStringifyDesc() {
    return addSortByInternal('stringify', Sort.desc);
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterSortBy>
      sortByToggleDarkMode() {
    return addSortByInternal('toggleDarkMode', Sort.asc);
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterSortBy>
      sortByToggleDarkModeDesc() {
    return addSortByInternal('toggleDarkMode', Sort.desc);
  }
}

extension IsarSettingsQueryWhereSortThenBy
    on QueryBuilder<IsarSettings, IsarSettings, QSortThenBy> {
  QueryBuilder<IsarSettings, IsarSettings, QAfterSortBy> thenByHashCode() {
    return addSortByInternal('hashCode', Sort.asc);
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterSortBy> thenByHashCodeDesc() {
    return addSortByInternal('hashCode', Sort.desc);
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterSortBy> thenById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterSortBy> thenByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterSortBy> thenByStringify() {
    return addSortByInternal('stringify', Sort.asc);
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterSortBy> thenByStringifyDesc() {
    return addSortByInternal('stringify', Sort.desc);
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterSortBy>
      thenByToggleDarkMode() {
    return addSortByInternal('toggleDarkMode', Sort.asc);
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterSortBy>
      thenByToggleDarkModeDesc() {
    return addSortByInternal('toggleDarkMode', Sort.desc);
  }
}

extension IsarSettingsQueryWhereDistinct
    on QueryBuilder<IsarSettings, IsarSettings, QDistinct> {
  QueryBuilder<IsarSettings, IsarSettings, QDistinct> distinctByHashCode() {
    return addDistinctByInternal('hashCode');
  }

  QueryBuilder<IsarSettings, IsarSettings, QDistinct> distinctById() {
    return addDistinctByInternal('id');
  }

  QueryBuilder<IsarSettings, IsarSettings, QDistinct> distinctByStringify() {
    return addDistinctByInternal('stringify');
  }

  QueryBuilder<IsarSettings, IsarSettings, QDistinct>
      distinctByToggleDarkMode() {
    return addDistinctByInternal('toggleDarkMode');
  }
}

extension IsarSettingsQueryProperty
    on QueryBuilder<IsarSettings, IsarSettings, QQueryProperty> {
  QueryBuilder<IsarSettings, int, QQueryOperations> hashCodeProperty() {
    return addPropertyNameInternal('hashCode');
  }

  QueryBuilder<IsarSettings, int?, QQueryOperations> idProperty() {
    return addPropertyNameInternal('id');
  }

  QueryBuilder<IsarSettings, bool, QQueryOperations> stringifyProperty() {
    return addPropertyNameInternal('stringify');
  }

  QueryBuilder<IsarSettings, bool?, QQueryOperations> toggleDarkModeProperty() {
    return addPropertyNameInternal('toggleDarkMode');
  }
}
