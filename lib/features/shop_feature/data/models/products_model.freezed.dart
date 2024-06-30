// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'products_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductsItems _$ProductsItemsFromJson(Map<String, dynamic> json) {
  return _ProductsItems.fromJson(json);
}

/// @nodoc
mixin _$ProductsItems {
  int? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  int? get price => throw _privateConstructorUsedError;
  int? get discount => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  int? get status => throw _privateConstructorUsedError;
  int? get previousPrice => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductsItemsCopyWith<ProductsItems> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsItemsCopyWith<$Res> {
  factory $ProductsItemsCopyWith(
          ProductsItems value, $Res Function(ProductsItems) then) =
      _$ProductsItemsCopyWithImpl<$Res, ProductsItems>;
  @useResult
  $Res call(
      {int? id,
      String? title,
      int? price,
      int? discount,
      String? image,
      int? status,
      int? previousPrice});
}

/// @nodoc
class _$ProductsItemsCopyWithImpl<$Res, $Val extends ProductsItems>
    implements $ProductsItemsCopyWith<$Res> {
  _$ProductsItemsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? price = freezed,
    Object? discount = freezed,
    Object? image = freezed,
    Object? status = freezed,
    Object? previousPrice = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      previousPrice: freezed == previousPrice
          ? _value.previousPrice
          : previousPrice // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductsItemsImplCopyWith<$Res>
    implements $ProductsItemsCopyWith<$Res> {
  factory _$$ProductsItemsImplCopyWith(
          _$ProductsItemsImpl value, $Res Function(_$ProductsItemsImpl) then) =
      __$$ProductsItemsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? title,
      int? price,
      int? discount,
      String? image,
      int? status,
      int? previousPrice});
}

/// @nodoc
class __$$ProductsItemsImplCopyWithImpl<$Res>
    extends _$ProductsItemsCopyWithImpl<$Res, _$ProductsItemsImpl>
    implements _$$ProductsItemsImplCopyWith<$Res> {
  __$$ProductsItemsImplCopyWithImpl(
      _$ProductsItemsImpl _value, $Res Function(_$ProductsItemsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? price = freezed,
    Object? discount = freezed,
    Object? image = freezed,
    Object? status = freezed,
    Object? previousPrice = freezed,
  }) {
    return _then(_$ProductsItemsImpl(
      freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == previousPrice
          ? _value.previousPrice
          : previousPrice // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductsItemsImpl implements _ProductsItems {
  const _$ProductsItemsImpl(this.id, this.title, this.price, this.discount,
      this.image, this.status, this.previousPrice);

  factory _$ProductsItemsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductsItemsImplFromJson(json);

  @override
  final int? id;
  @override
  final String? title;
  @override
  final int? price;
  @override
  final int? discount;
  @override
  final String? image;
  @override
  final int? status;
  @override
  final int? previousPrice;

  @override
  String toString() {
    return 'ProductsItems(id: $id, title: $title, price: $price, discount: $discount, image: $image, status: $status, previousPrice: $previousPrice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsItemsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.previousPrice, previousPrice) ||
                other.previousPrice == previousPrice));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, title, price, discount, image, status, previousPrice);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductsItemsImplCopyWith<_$ProductsItemsImpl> get copyWith =>
      __$$ProductsItemsImplCopyWithImpl<_$ProductsItemsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductsItemsImplToJson(
      this,
    );
  }
}

abstract class _ProductsItems implements ProductsItems {
  const factory _ProductsItems(
      final int? id,
      final String? title,
      final int? price,
      final int? discount,
      final String? image,
      final int? status,
      final int? previousPrice) = _$ProductsItemsImpl;

  factory _ProductsItems.fromJson(Map<String, dynamic> json) =
      _$ProductsItemsImpl.fromJson;

  @override
  int? get id;
  @override
  String? get title;
  @override
  int? get price;
  @override
  int? get discount;
  @override
  String? get image;
  @override
  int? get status;
  @override
  int? get previousPrice;
  @override
  @JsonKey(ignore: true)
  _$$ProductsItemsImplCopyWith<_$ProductsItemsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
