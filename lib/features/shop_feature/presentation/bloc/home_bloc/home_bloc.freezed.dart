// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int sort) loadProducts,
    required TResult Function() loadBanner,
    required TResult Function(int id) loadComments,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int sort)? loadProducts,
    TResult? Function()? loadBanner,
    TResult? Function(int id)? loadComments,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int sort)? loadProducts,
    TResult Function()? loadBanner,
    TResult Function(int id)? loadComments,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_loadProductsEvent value) loadProducts,
    required TResult Function(_loadBannerEvent value) loadBanner,
    required TResult Function(_loadCommentsEvent value) loadComments,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_loadProductsEvent value)? loadProducts,
    TResult? Function(_loadBannerEvent value)? loadBanner,
    TResult? Function(_loadCommentsEvent value)? loadComments,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_loadProductsEvent value)? loadProducts,
    TResult Function(_loadBannerEvent value)? loadBanner,
    TResult Function(_loadCommentsEvent value)? loadComments,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$loadProductsEventImplCopyWith<$Res> {
  factory _$$loadProductsEventImplCopyWith(_$loadProductsEventImpl value,
          $Res Function(_$loadProductsEventImpl) then) =
      __$$loadProductsEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int sort});
}

/// @nodoc
class __$$loadProductsEventImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$loadProductsEventImpl>
    implements _$$loadProductsEventImplCopyWith<$Res> {
  __$$loadProductsEventImplCopyWithImpl(_$loadProductsEventImpl _value,
      $Res Function(_$loadProductsEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sort = null,
  }) {
    return _then(_$loadProductsEventImpl(
      sort: null == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$loadProductsEventImpl implements _loadProductsEvent {
  const _$loadProductsEventImpl({required this.sort});

  @override
  final int sort;

  @override
  String toString() {
    return 'HomeEvent.loadProducts(sort: $sort)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$loadProductsEventImpl &&
            (identical(other.sort, sort) || other.sort == sort));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sort);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$loadProductsEventImplCopyWith<_$loadProductsEventImpl> get copyWith =>
      __$$loadProductsEventImplCopyWithImpl<_$loadProductsEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int sort) loadProducts,
    required TResult Function() loadBanner,
    required TResult Function(int id) loadComments,
  }) {
    return loadProducts(sort);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int sort)? loadProducts,
    TResult? Function()? loadBanner,
    TResult? Function(int id)? loadComments,
  }) {
    return loadProducts?.call(sort);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int sort)? loadProducts,
    TResult Function()? loadBanner,
    TResult Function(int id)? loadComments,
    required TResult orElse(),
  }) {
    if (loadProducts != null) {
      return loadProducts(sort);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_loadProductsEvent value) loadProducts,
    required TResult Function(_loadBannerEvent value) loadBanner,
    required TResult Function(_loadCommentsEvent value) loadComments,
  }) {
    return loadProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_loadProductsEvent value)? loadProducts,
    TResult? Function(_loadBannerEvent value)? loadBanner,
    TResult? Function(_loadCommentsEvent value)? loadComments,
  }) {
    return loadProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_loadProductsEvent value)? loadProducts,
    TResult Function(_loadBannerEvent value)? loadBanner,
    TResult Function(_loadCommentsEvent value)? loadComments,
    required TResult orElse(),
  }) {
    if (loadProducts != null) {
      return loadProducts(this);
    }
    return orElse();
  }
}

abstract class _loadProductsEvent implements HomeEvent {
  const factory _loadProductsEvent({required final int sort}) =
      _$loadProductsEventImpl;

  int get sort;
  @JsonKey(ignore: true)
  _$$loadProductsEventImplCopyWith<_$loadProductsEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$loadBannerEventImplCopyWith<$Res> {
  factory _$$loadBannerEventImplCopyWith(_$loadBannerEventImpl value,
          $Res Function(_$loadBannerEventImpl) then) =
      __$$loadBannerEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$loadBannerEventImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$loadBannerEventImpl>
    implements _$$loadBannerEventImplCopyWith<$Res> {
  __$$loadBannerEventImplCopyWithImpl(
      _$loadBannerEventImpl _value, $Res Function(_$loadBannerEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$loadBannerEventImpl implements _loadBannerEvent {
  const _$loadBannerEventImpl();

  @override
  String toString() {
    return 'HomeEvent.loadBanner()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$loadBannerEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int sort) loadProducts,
    required TResult Function() loadBanner,
    required TResult Function(int id) loadComments,
  }) {
    return loadBanner();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int sort)? loadProducts,
    TResult? Function()? loadBanner,
    TResult? Function(int id)? loadComments,
  }) {
    return loadBanner?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int sort)? loadProducts,
    TResult Function()? loadBanner,
    TResult Function(int id)? loadComments,
    required TResult orElse(),
  }) {
    if (loadBanner != null) {
      return loadBanner();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_loadProductsEvent value) loadProducts,
    required TResult Function(_loadBannerEvent value) loadBanner,
    required TResult Function(_loadCommentsEvent value) loadComments,
  }) {
    return loadBanner(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_loadProductsEvent value)? loadProducts,
    TResult? Function(_loadBannerEvent value)? loadBanner,
    TResult? Function(_loadCommentsEvent value)? loadComments,
  }) {
    return loadBanner?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_loadProductsEvent value)? loadProducts,
    TResult Function(_loadBannerEvent value)? loadBanner,
    TResult Function(_loadCommentsEvent value)? loadComments,
    required TResult orElse(),
  }) {
    if (loadBanner != null) {
      return loadBanner(this);
    }
    return orElse();
  }
}

abstract class _loadBannerEvent implements HomeEvent {
  const factory _loadBannerEvent() = _$loadBannerEventImpl;
}

/// @nodoc
abstract class _$$loadCommentsEventImplCopyWith<$Res> {
  factory _$$loadCommentsEventImplCopyWith(_$loadCommentsEventImpl value,
          $Res Function(_$loadCommentsEventImpl) then) =
      __$$loadCommentsEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$loadCommentsEventImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$loadCommentsEventImpl>
    implements _$$loadCommentsEventImplCopyWith<$Res> {
  __$$loadCommentsEventImplCopyWithImpl(_$loadCommentsEventImpl _value,
      $Res Function(_$loadCommentsEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$loadCommentsEventImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$loadCommentsEventImpl implements _loadCommentsEvent {
  const _$loadCommentsEventImpl({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'HomeEvent.loadComments(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$loadCommentsEventImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$loadCommentsEventImplCopyWith<_$loadCommentsEventImpl> get copyWith =>
      __$$loadCommentsEventImplCopyWithImpl<_$loadCommentsEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int sort) loadProducts,
    required TResult Function() loadBanner,
    required TResult Function(int id) loadComments,
  }) {
    return loadComments(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int sort)? loadProducts,
    TResult? Function()? loadBanner,
    TResult? Function(int id)? loadComments,
  }) {
    return loadComments?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int sort)? loadProducts,
    TResult Function()? loadBanner,
    TResult Function(int id)? loadComments,
    required TResult orElse(),
  }) {
    if (loadComments != null) {
      return loadComments(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_loadProductsEvent value) loadProducts,
    required TResult Function(_loadBannerEvent value) loadBanner,
    required TResult Function(_loadCommentsEvent value) loadComments,
  }) {
    return loadComments(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_loadProductsEvent value)? loadProducts,
    TResult? Function(_loadBannerEvent value)? loadBanner,
    TResult? Function(_loadCommentsEvent value)? loadComments,
  }) {
    return loadComments?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_loadProductsEvent value)? loadProducts,
    TResult Function(_loadBannerEvent value)? loadBanner,
    TResult Function(_loadCommentsEvent value)? loadComments,
    required TResult orElse(),
  }) {
    if (loadComments != null) {
      return loadComments(this);
    }
    return orElse();
  }
}

abstract class _loadCommentsEvent implements HomeEvent {
  const factory _loadCommentsEvent({required final int id}) =
      _$loadCommentsEventImpl;

  int get id;
  @JsonKey(ignore: true)
  _$$loadCommentsEventImplCopyWith<_$loadCommentsEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeState {
  ProductsStatus get productsSort0Status => throw _privateConstructorUsedError;
  ProductsStatus get productsSort1Status => throw _privateConstructorUsedError;
  BannerStatus get bannerStatus => throw _privateConstructorUsedError;
  CommentsStatus get commentsStatus => throw _privateConstructorUsedError;
  ProductsEntity? get productsSort0Entity => throw _privateConstructorUsedError;
  ProductsEntity? get productsSort1Entity => throw _privateConstructorUsedError;
  BannerEntity? get bannerEntity => throw _privateConstructorUsedError;
  CommentsEntity? get commentsEntity => throw _privateConstructorUsedError;
  String? get productsSort0Error => throw _privateConstructorUsedError;
  String? get productsSort1Error => throw _privateConstructorUsedError;
  String? get bannerError => throw _privateConstructorUsedError;
  String? get commentsError => throw _privateConstructorUsedError;
  String? get appbarTitle => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {ProductsStatus productsSort0Status,
      ProductsStatus productsSort1Status,
      BannerStatus bannerStatus,
      CommentsStatus commentsStatus,
      ProductsEntity? productsSort0Entity,
      ProductsEntity? productsSort1Entity,
      BannerEntity? bannerEntity,
      CommentsEntity? commentsEntity,
      String? productsSort0Error,
      String? productsSort1Error,
      String? bannerError,
      String? commentsError,
      String? appbarTitle});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productsSort0Status = null,
    Object? productsSort1Status = null,
    Object? bannerStatus = null,
    Object? commentsStatus = null,
    Object? productsSort0Entity = freezed,
    Object? productsSort1Entity = freezed,
    Object? bannerEntity = freezed,
    Object? commentsEntity = freezed,
    Object? productsSort0Error = freezed,
    Object? productsSort1Error = freezed,
    Object? bannerError = freezed,
    Object? commentsError = freezed,
    Object? appbarTitle = freezed,
  }) {
    return _then(_value.copyWith(
      productsSort0Status: null == productsSort0Status
          ? _value.productsSort0Status
          : productsSort0Status // ignore: cast_nullable_to_non_nullable
              as ProductsStatus,
      productsSort1Status: null == productsSort1Status
          ? _value.productsSort1Status
          : productsSort1Status // ignore: cast_nullable_to_non_nullable
              as ProductsStatus,
      bannerStatus: null == bannerStatus
          ? _value.bannerStatus
          : bannerStatus // ignore: cast_nullable_to_non_nullable
              as BannerStatus,
      commentsStatus: null == commentsStatus
          ? _value.commentsStatus
          : commentsStatus // ignore: cast_nullable_to_non_nullable
              as CommentsStatus,
      productsSort0Entity: freezed == productsSort0Entity
          ? _value.productsSort0Entity
          : productsSort0Entity // ignore: cast_nullable_to_non_nullable
              as ProductsEntity?,
      productsSort1Entity: freezed == productsSort1Entity
          ? _value.productsSort1Entity
          : productsSort1Entity // ignore: cast_nullable_to_non_nullable
              as ProductsEntity?,
      bannerEntity: freezed == bannerEntity
          ? _value.bannerEntity
          : bannerEntity // ignore: cast_nullable_to_non_nullable
              as BannerEntity?,
      commentsEntity: freezed == commentsEntity
          ? _value.commentsEntity
          : commentsEntity // ignore: cast_nullable_to_non_nullable
              as CommentsEntity?,
      productsSort0Error: freezed == productsSort0Error
          ? _value.productsSort0Error
          : productsSort0Error // ignore: cast_nullable_to_non_nullable
              as String?,
      productsSort1Error: freezed == productsSort1Error
          ? _value.productsSort1Error
          : productsSort1Error // ignore: cast_nullable_to_non_nullable
              as String?,
      bannerError: freezed == bannerError
          ? _value.bannerError
          : bannerError // ignore: cast_nullable_to_non_nullable
              as String?,
      commentsError: freezed == commentsError
          ? _value.commentsError
          : commentsError // ignore: cast_nullable_to_non_nullable
              as String?,
      appbarTitle: freezed == appbarTitle
          ? _value.appbarTitle
          : appbarTitle // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
          _$HomeStateImpl value, $Res Function(_$HomeStateImpl) then) =
      __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ProductsStatus productsSort0Status,
      ProductsStatus productsSort1Status,
      BannerStatus bannerStatus,
      CommentsStatus commentsStatus,
      ProductsEntity? productsSort0Entity,
      ProductsEntity? productsSort1Entity,
      BannerEntity? bannerEntity,
      CommentsEntity? commentsEntity,
      String? productsSort0Error,
      String? productsSort1Error,
      String? bannerError,
      String? commentsError,
      String? appbarTitle});
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
      _$HomeStateImpl _value, $Res Function(_$HomeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productsSort0Status = null,
    Object? productsSort1Status = null,
    Object? bannerStatus = null,
    Object? commentsStatus = null,
    Object? productsSort0Entity = freezed,
    Object? productsSort1Entity = freezed,
    Object? bannerEntity = freezed,
    Object? commentsEntity = freezed,
    Object? productsSort0Error = freezed,
    Object? productsSort1Error = freezed,
    Object? bannerError = freezed,
    Object? commentsError = freezed,
    Object? appbarTitle = freezed,
  }) {
    return _then(_$HomeStateImpl(
      productsSort0Status: null == productsSort0Status
          ? _value.productsSort0Status
          : productsSort0Status // ignore: cast_nullable_to_non_nullable
              as ProductsStatus,
      productsSort1Status: null == productsSort1Status
          ? _value.productsSort1Status
          : productsSort1Status // ignore: cast_nullable_to_non_nullable
              as ProductsStatus,
      bannerStatus: null == bannerStatus
          ? _value.bannerStatus
          : bannerStatus // ignore: cast_nullable_to_non_nullable
              as BannerStatus,
      commentsStatus: null == commentsStatus
          ? _value.commentsStatus
          : commentsStatus // ignore: cast_nullable_to_non_nullable
              as CommentsStatus,
      productsSort0Entity: freezed == productsSort0Entity
          ? _value.productsSort0Entity
          : productsSort0Entity // ignore: cast_nullable_to_non_nullable
              as ProductsEntity?,
      productsSort1Entity: freezed == productsSort1Entity
          ? _value.productsSort1Entity
          : productsSort1Entity // ignore: cast_nullable_to_non_nullable
              as ProductsEntity?,
      bannerEntity: freezed == bannerEntity
          ? _value.bannerEntity
          : bannerEntity // ignore: cast_nullable_to_non_nullable
              as BannerEntity?,
      commentsEntity: freezed == commentsEntity
          ? _value.commentsEntity
          : commentsEntity // ignore: cast_nullable_to_non_nullable
              as CommentsEntity?,
      productsSort0Error: freezed == productsSort0Error
          ? _value.productsSort0Error
          : productsSort0Error // ignore: cast_nullable_to_non_nullable
              as String?,
      productsSort1Error: freezed == productsSort1Error
          ? _value.productsSort1Error
          : productsSort1Error // ignore: cast_nullable_to_non_nullable
              as String?,
      bannerError: freezed == bannerError
          ? _value.bannerError
          : bannerError // ignore: cast_nullable_to_non_nullable
              as String?,
      commentsError: freezed == commentsError
          ? _value.commentsError
          : commentsError // ignore: cast_nullable_to_non_nullable
              as String?,
      appbarTitle: freezed == appbarTitle
          ? _value.appbarTitle
          : appbarTitle // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$HomeStateImpl implements _HomeState {
  const _$HomeStateImpl(
      {this.productsSort0Status = ProductsStatus.loading,
      this.productsSort1Status = ProductsStatus.loading,
      this.bannerStatus = BannerStatus.loading,
      this.commentsStatus = CommentsStatus.loading,
      this.productsSort0Entity,
      this.productsSort1Entity,
      this.bannerEntity,
      this.commentsEntity,
      this.productsSort0Error,
      this.productsSort1Error,
      this.bannerError,
      this.commentsError,
      this.appbarTitle});

  @override
  @JsonKey()
  final ProductsStatus productsSort0Status;
  @override
  @JsonKey()
  final ProductsStatus productsSort1Status;
  @override
  @JsonKey()
  final BannerStatus bannerStatus;
  @override
  @JsonKey()
  final CommentsStatus commentsStatus;
  @override
  final ProductsEntity? productsSort0Entity;
  @override
  final ProductsEntity? productsSort1Entity;
  @override
  final BannerEntity? bannerEntity;
  @override
  final CommentsEntity? commentsEntity;
  @override
  final String? productsSort0Error;
  @override
  final String? productsSort1Error;
  @override
  final String? bannerError;
  @override
  final String? commentsError;
  @override
  final String? appbarTitle;

  @override
  String toString() {
    return 'HomeState(productsSort0Status: $productsSort0Status, productsSort1Status: $productsSort1Status, bannerStatus: $bannerStatus, commentsStatus: $commentsStatus, productsSort0Entity: $productsSort0Entity, productsSort1Entity: $productsSort1Entity, bannerEntity: $bannerEntity, commentsEntity: $commentsEntity, productsSort0Error: $productsSort0Error, productsSort1Error: $productsSort1Error, bannerError: $bannerError, commentsError: $commentsError, appbarTitle: $appbarTitle)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            (identical(other.productsSort0Status, productsSort0Status) ||
                other.productsSort0Status == productsSort0Status) &&
            (identical(other.productsSort1Status, productsSort1Status) ||
                other.productsSort1Status == productsSort1Status) &&
            (identical(other.bannerStatus, bannerStatus) ||
                other.bannerStatus == bannerStatus) &&
            (identical(other.commentsStatus, commentsStatus) ||
                other.commentsStatus == commentsStatus) &&
            (identical(other.productsSort0Entity, productsSort0Entity) ||
                other.productsSort0Entity == productsSort0Entity) &&
            (identical(other.productsSort1Entity, productsSort1Entity) ||
                other.productsSort1Entity == productsSort1Entity) &&
            (identical(other.bannerEntity, bannerEntity) ||
                other.bannerEntity == bannerEntity) &&
            (identical(other.commentsEntity, commentsEntity) ||
                other.commentsEntity == commentsEntity) &&
            (identical(other.productsSort0Error, productsSort0Error) ||
                other.productsSort0Error == productsSort0Error) &&
            (identical(other.productsSort1Error, productsSort1Error) ||
                other.productsSort1Error == productsSort1Error) &&
            (identical(other.bannerError, bannerError) ||
                other.bannerError == bannerError) &&
            (identical(other.commentsError, commentsError) ||
                other.commentsError == commentsError) &&
            (identical(other.appbarTitle, appbarTitle) ||
                other.appbarTitle == appbarTitle));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      productsSort0Status,
      productsSort1Status,
      bannerStatus,
      commentsStatus,
      productsSort0Entity,
      productsSort1Entity,
      bannerEntity,
      commentsEntity,
      productsSort0Error,
      productsSort1Error,
      bannerError,
      commentsError,
      appbarTitle);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {final ProductsStatus productsSort0Status,
      final ProductsStatus productsSort1Status,
      final BannerStatus bannerStatus,
      final CommentsStatus commentsStatus,
      final ProductsEntity? productsSort0Entity,
      final ProductsEntity? productsSort1Entity,
      final BannerEntity? bannerEntity,
      final CommentsEntity? commentsEntity,
      final String? productsSort0Error,
      final String? productsSort1Error,
      final String? bannerError,
      final String? commentsError,
      final String? appbarTitle}) = _$HomeStateImpl;

  @override
  ProductsStatus get productsSort0Status;
  @override
  ProductsStatus get productsSort1Status;
  @override
  BannerStatus get bannerStatus;
  @override
  CommentsStatus get commentsStatus;
  @override
  ProductsEntity? get productsSort0Entity;
  @override
  ProductsEntity? get productsSort1Entity;
  @override
  BannerEntity? get bannerEntity;
  @override
  CommentsEntity? get commentsEntity;
  @override
  String? get productsSort0Error;
  @override
  String? get productsSort1Error;
  @override
  String? get bannerError;
  @override
  String? get commentsError;
  @override
  String? get appbarTitle;
  @override
  @JsonKey(ignore: true)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
