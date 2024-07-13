// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter_shopping/core/presentation/routes/app_router.dart'
    as _i5;
import 'package:flutter_shopping/core/style/app_color.dart' as _i3;
import 'package:flutter_shopping/core/style/app_theme.dart' as _i6;
import 'package:flutter_shopping/features/favourite_feature/data/datasources/app_database.dart'
    as _i4;
import 'package:flutter_shopping/features/favourite_feature/data/datasources/favourite_local_datasource.dart'
    as _i15;
import 'package:flutter_shopping/features/favourite_feature/data/repositories/favourite_repository_impl.dart'
    as _i17;
import 'package:flutter_shopping/features/favourite_feature/domain/repositories/favourite_repository.dart'
    as _i16;
import 'package:flutter_shopping/features/favourite_feature/domain/usecases/favourite_delete_usecase.dart'
    as _i22;
import 'package:flutter_shopping/features/shop_feature/data/datasources/banner_remote_datasource.dart'
    as _i7;
import 'package:flutter_shopping/features/shop_feature/data/datasources/comments_remote_datasource.dart'
    as _i11;
import 'package:flutter_shopping/features/shop_feature/data/datasources/products_remote_datasource.dart'
    as _i18;
import 'package:flutter_shopping/features/shop_feature/data/repositories/banner_repository_impl.dart'
    as _i9;
import 'package:flutter_shopping/features/shop_feature/data/repositories/comments_repository_impl.dart'
    as _i13;
import 'package:flutter_shopping/features/shop_feature/data/repositories/products_repository_impl.dart'
    as _i20;
import 'package:flutter_shopping/features/shop_feature/domain/repositories/banner_repository.dart'
    as _i8;
import 'package:flutter_shopping/features/shop_feature/domain/repositories/comments_repository.dart'
    as _i12;
import 'package:flutter_shopping/features/shop_feature/domain/repositories/products_repository.dart'
    as _i19;
import 'package:flutter_shopping/features/shop_feature/domain/usecases/banner_usecase.dart'
    as _i10;
import 'package:flutter_shopping/features/shop_feature/domain/usecases/comments_usecase.dart'
    as _i14;
import 'package:flutter_shopping/features/shop_feature/domain/usecases/products_usecase.dart'
    as _i21;
import 'package:flutter_shopping/features/shop_feature/presentation/bloc/home_bloc/home_bloc.dart'
    as _i23;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt $initGetIt({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.AppColorsBase>(() => _i3.AppColorsBase());
    gh.factory<_i4.AppDatabase>(() => _i4.AppDatabase());
    gh.lazySingleton<_i5.AppRouter>(() => _i5.AppRouter());
    gh.factory<_i6.AppTheme>(
        () => _i6.AppTheme(appColors: gh<_i3.AppColorsBase>()));
    gh.factory<_i7.BannerRemoteDatasource>(() => _i7.BannerRemoteDatasource());
    gh.factory<_i8.BannerRepository>(() =>
        _i9.BannerRepositoryImpl(datasource: gh<_i7.BannerRemoteDatasource>()));
    gh.factory<_i10.BannerUsecase>(
        () => _i10.BannerUsecase(repository: gh<_i8.BannerRepository>()));
    gh.factory<_i11.CommentsRemoteDatasource>(
        () => _i11.CommentsRemoteDatasource());
    gh.factory<_i12.CommentsRepository>(() => _i13.CommentsRepositoryImpl(
        datasource: gh<_i11.CommentsRemoteDatasource>()));
    gh.factory<_i14.CommentsUsecase>(
        () => _i14.CommentsUsecase(repository: gh<_i12.CommentsRepository>()));
    gh.factory<_i15.FavouriteLocalDatasource>(() =>
        _i15.FavouriteLocalDatasource(appDatabase: gh<_i4.AppDatabase>()));
    gh.factory<_i16.FavouriteRepository>(() => _i17.FavouriteRepositoryImpl(
        datasource: gh<_i15.FavouriteLocalDatasource>()));
    gh.factory<_i18.ProductsRemoteDatasource>(
        () => _i18.ProductsRemoteDatasource());
    gh.factory<_i19.ProductsRepository>(() => _i20.ProductsRepositoryImpl(
        datasource: gh<_i18.ProductsRemoteDatasource>()));
    gh.factory<_i21.ProductsUsecase>(
        () => _i21.ProductsUsecase(repository: gh<_i19.ProductsRepository>()));
    gh.factory<_i22.FavouriteDelete>(
        () => _i22.FavouriteDelete(repository: gh<_i16.FavouriteRepository>()));
    gh.factory<_i23.HomeBloc>(() => _i23.HomeBloc(
          gh<_i21.ProductsUsecase>(),
          gh<_i10.BannerUsecase>(),
          gh<_i14.CommentsUsecase>(),
        ));
    return this;
  }
}
