part of 'home_bloc.dart';

class HomeEvent {}

class LoadProductsEvent extends HomeEvent {
  final int sort;
  LoadProductsEvent({required this.sort});
}

class LoadBannerEvent extends HomeEvent {}
