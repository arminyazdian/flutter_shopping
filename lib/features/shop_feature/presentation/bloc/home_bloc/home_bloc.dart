import 'package:bloc/bloc.dart';
import 'package:flutter_shopping/core/resources/data_state.dart';
import 'package:flutter_shopping/features/shop_feature/domain/repositories/banner_repository.dart';
import 'package:flutter_shopping/features/shop_feature/domain/usecases/banner_usecase.dart';
import 'package:flutter_shopping/features/shop_feature/domain/usecases/products_usecase.dart';
import 'package:flutter_shopping/features/shop_feature/presentation/bloc/home_bloc/banner_status.dart';
import 'package:flutter_shopping/features/shop_feature/presentation/bloc/home_bloc/products_status.dart';
import 'package:injectable/injectable.dart';

part 'home_event.dart';
part 'home_state.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final ProductsUsecase productsUsecase;
  final BannerUsecase bannerUsecase;

  HomeBloc(this.productsUsecase, this.bannerUsecase) : super(HomeState(productsStatus: ProductsLoading(), bannerStatus: BannerLoading())) {
    on<LoadProductsEvent>((event, emit) async {
      emit(state.copyWith(newProductStatus: ProductsLoading()));

      DataState productsDataState = await productsUsecase(event.sort);
      if (DataState is DataSuccess) {
        emit(state.copyWith(newProductStatus: ProductsSuccess(entity: productsDataState.data)));
      }
      if (DataState is DataFail) {
        emit(state.copyWith(newProductStatus: ProductsFail(error: productsDataState.error!)));
      }
    });
    on<LoadBannerEvent>((event, emit) async {
      emit(state.copyWith(newBannerStatus: BannerLoading()));

      DataState bannerDataState = await bannerUsecase(NoParams());
      if (DataState is DataSuccess) {
        emit(state.copyWith(newBannerStatus: BannerSuccess(entity: bannerDataState.data)));
      }
      if (DataState is DataFail) {
        emit(state.copyWith(newBannerStatus: BannerFail(error: bannerDataState.error!)));
      }
    });
  }
}
