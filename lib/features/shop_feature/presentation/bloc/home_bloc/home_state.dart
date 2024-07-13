part of 'home_bloc.dart';

enum ProductsStatus {
  loading,
  success,
  failure;

  bool get isLoading => this == ProductsStatus.loading;
  bool get isSuccess => this == ProductsStatus.success;
  bool get isFailure => this == ProductsStatus.failure;
}

enum BannerStatus {
  loading,
  success,
  failure;

  bool get isLoading => this == BannerStatus.loading;
  bool get isSuccess => this == BannerStatus.success;
  bool get isFailure => this == BannerStatus.failure;
}

enum CommentsStatus {
  loading,
  success,
  failure;

  bool get isLoading => this == CommentsStatus.loading;
  bool get isSuccess => this == CommentsStatus.success;
  bool get isFailure => this == CommentsStatus.failure;
}

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(ProductsStatus.loading) ProductsStatus productsSort0Status,
    @Default(ProductsStatus.loading) ProductsStatus productsSort1Status,
    @Default(BannerStatus.loading) BannerStatus bannerStatus,
    @Default(CommentsStatus.loading) CommentsStatus commentsStatus,
    ProductsEntity? productsSort0Entity,
    ProductsEntity? productsSort1Entity,
    BannerEntity? bannerEntity,
    CommentsEntity? commentsEntity,
    String? productsSort0Error,
    String? productsSort1Error,
    String? bannerError,
    String? commentsError,
    String? appbarTitle,
  }) = _HomeState;
}
