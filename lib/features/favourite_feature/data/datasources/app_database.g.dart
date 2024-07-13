// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $FavouriteItemsTable extends FavouriteItems
    with TableInfo<$FavouriteItemsTable, FavouriteItem> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $FavouriteItemsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _isAddedMeta =
      const VerificationMeta('isAdded');
  @override
  late final GeneratedColumn<bool> isAdded = GeneratedColumn<bool>(
      'is_added', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_added" IN (0, 1))'));
  @override
  List<GeneratedColumn> get $columns => [id, isAdded];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'favourite_items';
  @override
  VerificationContext validateIntegrity(Insertable<FavouriteItem> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('is_added')) {
      context.handle(_isAddedMeta,
          isAdded.isAcceptableOrUnknown(data['is_added']!, _isAddedMeta));
    } else if (isInserting) {
      context.missing(_isAddedMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  FavouriteItem map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return FavouriteItem(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      isAdded: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_added'])!,
    );
  }

  @override
  $FavouriteItemsTable createAlias(String alias) {
    return $FavouriteItemsTable(attachedDatabase, alias);
  }
}

class FavouriteItem extends DataClass implements Insertable<FavouriteItem> {
  final int id;
  final bool isAdded;
  const FavouriteItem({required this.id, required this.isAdded});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['is_added'] = Variable<bool>(isAdded);
    return map;
  }

  FavouriteItemsCompanion toCompanion(bool nullToAbsent) {
    return FavouriteItemsCompanion(
      id: Value(id),
      isAdded: Value(isAdded),
    );
  }

  factory FavouriteItem.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return FavouriteItem(
      id: serializer.fromJson<int>(json['id']),
      isAdded: serializer.fromJson<bool>(json['isAdded']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'isAdded': serializer.toJson<bool>(isAdded),
    };
  }

  FavouriteItem copyWith({int? id, bool? isAdded}) => FavouriteItem(
        id: id ?? this.id,
        isAdded: isAdded ?? this.isAdded,
      );
  @override
  String toString() {
    return (StringBuffer('FavouriteItem(')
          ..write('id: $id, ')
          ..write('isAdded: $isAdded')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, isAdded);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FavouriteItem &&
          other.id == this.id &&
          other.isAdded == this.isAdded);
}

class FavouriteItemsCompanion extends UpdateCompanion<FavouriteItem> {
  final Value<int> id;
  final Value<bool> isAdded;
  const FavouriteItemsCompanion({
    this.id = const Value.absent(),
    this.isAdded = const Value.absent(),
  });
  FavouriteItemsCompanion.insert({
    this.id = const Value.absent(),
    required bool isAdded,
  }) : isAdded = Value(isAdded);
  static Insertable<FavouriteItem> custom({
    Expression<int>? id,
    Expression<bool>? isAdded,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (isAdded != null) 'is_added': isAdded,
    });
  }

  FavouriteItemsCompanion copyWith({Value<int>? id, Value<bool>? isAdded}) {
    return FavouriteItemsCompanion(
      id: id ?? this.id,
      isAdded: isAdded ?? this.isAdded,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (isAdded.present) {
      map['is_added'] = Variable<bool>(isAdded.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FavouriteItemsCompanion(')
          ..write('id: $id, ')
          ..write('isAdded: $isAdded')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  late final $FavouriteItemsTable favouriteItems = $FavouriteItemsTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [favouriteItems];
}
