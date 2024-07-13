import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_shopping/core/resources/data_state.dart';
import 'package:flutter_shopping/core/utils/consts.dart';
import 'package:flutter_shopping/features/shop_feature/domain/entities/banner_entity.dart';
import 'package:flutter_shopping/features/shop_feature/domain/entities/comments_entity.dart';
import 'package:flutter_shopping/features/shop_feature/domain/entities/products_entity.dart';
import 'package:flutter_shopping/features/shop_feature/domain/repositories/banner_repository.dart';
import 'package:flutter_shopping/features/shop_feature/domain/usecases/banner_usecase.dart';
import 'package:flutter_shopping/features/shop_feature/domain/usecases/comments_usecase.dart';
import 'package:flutter_shopping/features/shop_feature/domain/usecases/products_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final ProductsUsecase productsUsecase;
  final BannerUsecase bannerUsecase;
  final CommentsUsecase commentsUsecase;

  HomeBloc(this.productsUsecase, this.bannerUsecase, this.commentsUsecase) : super(const HomeState()) {
    on<_loadProductsEvent>(_onLoadProductsEvent);
    on<_loadBannerEvent>(_onLoadBannerEvent);
    on<_loadCommentsEvent>(_onLoadCommentsEvent);
  }
  FutureOr<void> _onLoadProductsEvent(_loadProductsEvent event, Emitter<HomeState> emit) async {
    String appbarTitle = "";
    if (event.sort == 0) {
      emit(state.copyWith(productsSort0Status: ProductsStatus.loading, appbarTitle: appbarTitle));
    } else {
      emit(state.copyWith(productsSort1Status: ProductsStatus.loading, appbarTitle: appbarTitle));
    }
    try {
      DataState productsDataState = await productsUsecase(event.sort).timeout(Consts.timeout);
      if (productsDataState is DataSuccess) {
        appbarTitle = Consts.sortTitles[event.sort];
        if (event.sort == 0) {
          emit(state.copyWith(productsSort0Status: ProductsStatus.success, productsSort0Entity: productsDataState.data, appbarTitle: appbarTitle));
        } else {
          emit(state.copyWith(productsSort1Status: ProductsStatus.success, productsSort1Entity: productsDataState.data, appbarTitle: appbarTitle));
        }
      }
      if (productsDataState is DataFail) {
        if (event.sort == 0) {
          emit(state.copyWith(productsSort0Status: ProductsStatus.failure, productsSort0Error: productsDataState.error));
        } else {
          emit(state.copyWith(productsSort1Status: ProductsStatus.failure, productsSort1Error: productsDataState.error));
        }
      }
    } catch (e) {
      if (event.sort == 0) {
        emit(state.copyWith(productsSort0Status: ProductsStatus.failure, productsSort0Error: e.toString()));
      } else {
        emit(state.copyWith(productsSort1Status: ProductsStatus.failure, productsSort1Error: e.toString()));
      }
    }
  }

  FutureOr<void> _onLoadBannerEvent(_loadBannerEvent event, Emitter<HomeState> emit) async {
    try {
      DataState bannerDataState = await bannerUsecase(NoParams()).timeout(Consts.timeout);
      if (bannerDataState is DataSuccess) {
        emit(state.copyWith(bannerStatus: BannerStatus.success, bannerEntity: bannerDataState.data));
      }
      if (bannerDataState is DataFail) {
        emit(state.copyWith(bannerStatus: BannerStatus.failure, bannerError: bannerDataState.error));
      }
    } catch (e) {
      emit(state.copyWith(bannerStatus: BannerStatus.failure, bannerError: e.toString()));
    }
  }

  FutureOr<void> _onLoadCommentsEvent(_loadCommentsEvent event, Emitter<HomeState> emit) async {
    DataState commentsDataState = await commentsUsecase(event.id).timeout(Consts.timeout);
    try {
      if (commentsDataState is DataSuccess) {
        emit(state.copyWith(commentsStatus: CommentsStatus.success, commentsEntity: commentsDataState.data));
      }
      if (commentsDataState is DataFail) {
        emit(state.copyWith(commentsStatus: CommentsStatus.failure, commentsError: commentsDataState.error));
      }
    } catch (e) {
      emit(state.copyWith(commentsStatus: CommentsStatus.failure, commentsError: e.toString()));
    }
  }
}
