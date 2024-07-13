part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.loadProducts({required int sort}) = _loadProductsEvent;
  const factory HomeEvent.loadBanner() = _loadBannerEvent;
  const factory HomeEvent.loadComments({required int id}) = _loadCommentsEvent;
}
