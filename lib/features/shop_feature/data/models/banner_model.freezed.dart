// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'banner_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BannerItems _$BannerItemsFromJson(Map<String, dynamic> json) {
  return _BannerItems.fromJson(json);
}

/// @nodoc
mixin _$BannerItems {
  int? get id => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  int? get linkType => throw _privateConstructorUsedError;
  int? get linkValue => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BannerItemsCopyWith<BannerItems> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BannerItemsCopyWith<$Res> {
  factory $BannerItemsCopyWith(
          BannerItems value, $Res Function(BannerItems) then) =
      _$BannerItemsCopyWithImpl<$Res, BannerItems>;
  @useResult
  $Res call({int? id, String? image, int? linkType, int? linkValue});
}

/// @nodoc
class _$BannerItemsCopyWithImpl<$Res, $Val extends BannerItems>
    implements $BannerItemsCopyWith<$Res> {
  _$BannerItemsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? image = freezed,
    Object? linkType = freezed,
    Object? linkValue = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      linkType: freezed == linkType
          ? _value.linkType
          : linkType // ignore: cast_nullable_to_non_nullable
              as int?,
      linkValue: freezed == linkValue
          ? _value.linkValue
          : linkValue // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BannerItemsImplCopyWith<$Res>
    implements $BannerItemsCopyWith<$Res> {
  factory _$$BannerItemsImplCopyWith(
          _$BannerItemsImpl value, $Res Function(_$BannerItemsImpl) then) =
      __$$BannerItemsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? image, int? linkType, int? linkValue});
}

/// @nodoc
class __$$BannerItemsImplCopyWithImpl<$Res>
    extends _$BannerItemsCopyWithImpl<$Res, _$BannerItemsImpl>
    implements _$$BannerItemsImplCopyWith<$Res> {
  __$$BannerItemsImplCopyWithImpl(
      _$BannerItemsImpl _value, $Res Function(_$BannerItemsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? image = freezed,
    Object? linkType = freezed,
    Object? linkValue = freezed,
  }) {
    return _then(_$BannerItemsImpl(
      freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == linkType
          ? _value.linkType
          : linkType // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == linkValue
          ? _value.linkValue
          : linkValue // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BannerItemsImpl implements _BannerItems {
  const _$BannerItemsImpl(this.id, this.image, this.linkType, this.linkValue);

  factory _$BannerItemsImpl.fromJson(Map<String, dynamic> json) =>
      _$$BannerItemsImplFromJson(json);

  @override
  final int? id;
  @override
  final String? image;
  @override
  final int? linkType;
  @override
  final int? linkValue;

  @override
  String toString() {
    return 'BannerItems(id: $id, image: $image, linkType: $linkType, linkValue: $linkValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BannerItemsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.linkType, linkType) ||
                other.linkType == linkType) &&
            (identical(other.linkValue, linkValue) ||
                other.linkValue == linkValue));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, image, linkType, linkValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BannerItemsImplCopyWith<_$BannerItemsImpl> get copyWith =>
      __$$BannerItemsImplCopyWithImpl<_$BannerItemsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BannerItemsImplToJson(
      this,
    );
  }
}

abstract class _BannerItems implements BannerItems {
  const factory _BannerItems(final int? id, final String? image,
      final int? linkType, final int? linkValue) = _$BannerItemsImpl;

  factory _BannerItems.fromJson(Map<String, dynamic> json) =
      _$BannerItemsImpl.fromJson;

  @override
  int? get id;
  @override
  String? get image;
  @override
  int? get linkType;
  @override
  int? get linkValue;
  @override
  @JsonKey(ignore: true)
  _$$BannerItemsImplCopyWith<_$BannerItemsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
