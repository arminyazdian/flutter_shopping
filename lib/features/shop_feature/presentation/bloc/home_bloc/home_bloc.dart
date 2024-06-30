import 'package:bloc/bloc.dart';
import 'package:flutter_shopping/core/resources/data_state.dart';
import 'package:flutter_shopping/core/utils/consts.dart';
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

  HomeBloc(this.productsUsecase, this.bannerUsecase)
      : super(HomeState(productsStatusSort0: ProductsLoading(), productsStatusSort1: ProductsLoading(), bannerStatus: BannerLoading())) {
    on<LoadProductsEvent>((event, emit) async {
      if (event.sort == 0) {
        emit(state.copyWith(newProductStatusSort0: ProductsLoading()));
      } else {
        emit(state.copyWith(newProductStatusSort1: ProductsLoading()));
      }
      try {
        DataState productsDataState = await productsUsecase(event.sort).timeout(Consts.timeout);
        if (productsDataState is DataSuccess) {
          if (event.sort == 0) {
            emit(state.copyWith(newProductStatusSort0: ProductsSuccess(entity: productsDataState.data)));
          } else {
            emit(state.copyWith(newProductStatusSort1: ProductsSuccess(entity: productsDataState.data)));
          }
        }
        if (productsDataState is DataFail) {
          if (event.sort == 0) {
            emit(state.copyWith(newProductStatusSort0: ProductsFail(error: productsDataState.error!)));
          } else {
            emit(state.copyWith(newProductStatusSort1: ProductsFail(error: productsDataState.error!)));
          }
        }
      } catch (e) {
        if (event.sort == 0) {
          emit(state.copyWith(newProductStatusSort0: ProductsFail(error: e.toString())));
        } else {
          emit(state.copyWith(newProductStatusSort1: ProductsFail(error: e.toString())));
        }
      }
    });
    on<LoadBannerEvent>((event, emit) async {
      emit(state.copyWith(newBannerStatus: BannerLoading()));

      try {
        DataState bannerDataState = await bannerUsecase(NoParams()).timeout(Consts.timeout);
        if (bannerDataState is DataSuccess) {
          emit(state.copyWith(newBannerStatus: BannerSuccess(entity: bannerDataState.data)));
        }
        if (bannerDataState is DataFail) {
          emit(state.copyWith(newBannerStatus: BannerFail(error: bannerDataState.error!)));
        }
      } catch (e) {
        emit(state.copyWith(newBannerStatus: BannerFail(error: e.toString())));
      }
    });
  }
}
