part of 'home_bloc.dart';

class HomeState {
  final ProductsStatus productsStatusSort0, productsStatusSort1;
  final BannerStatus bannerStatus;
  final CommentsStatus commentsStatus;
  HomeState({required this.productsStatusSort0, required this.productsStatusSort1, required this.bannerStatus, required this.commentsStatus});

  HomeState copyWith({ProductsStatus? newProductStatusSort0, ProductsStatus? newProductStatusSort1, BannerStatus? newBannerStatus, CommentsStatus? newCommentsStatus}) {
    return HomeState(
      productsStatusSort0: newProductStatusSort0 ?? productsStatusSort0,
      productsStatusSort1: newProductStatusSort1 ?? productsStatusSort1,
      bannerStatus: newBannerStatus ?? bannerStatus,
      commentsStatus: newCommentsStatus ?? commentsStatus,
    );
  }
}
