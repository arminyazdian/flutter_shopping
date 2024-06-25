part of 'home_bloc.dart';

class HomeState {
  final ProductsStatus productsStatus;
  final BannerStatus bannerStatus;
  HomeState({required this.productsStatus, required this.bannerStatus});

  HomeState copyWith({ProductsStatus? newProductStatus, BannerStatus? newBannerStatus}) {
    return HomeState(productsStatus: newProductStatus ?? productsStatus, bannerStatus: newBannerStatus ?? bannerStatus);
  }
}
