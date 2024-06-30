part of 'home_bloc.dart';

class HomeEvent {
  const HomeEvent();
}

class LoadProductsEvent extends HomeEvent {
  final int sort;
  LoadProductsEvent({required this.sort});
}

class LoadBannerEvent extends HomeEvent {
  const LoadBannerEvent();
}
