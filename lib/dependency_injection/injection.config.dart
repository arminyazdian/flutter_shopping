// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter_shopping/core/presentation/routes/app_router.dart'
    as _i4;
import 'package:flutter_shopping/core/style/app_color.dart' as _i3;
import 'package:flutter_shopping/core/style/app_theme.dart' as _i5;
import 'package:flutter_shopping/features/shop_feature/data/datasources/banner_remote_datasource.dart'
    as _i6;
import 'package:flutter_shopping/features/shop_feature/data/datasources/products_remote_datasource.dart'
    as _i10;
import 'package:flutter_shopping/features/shop_feature/data/repositories/banner_repository_impl.dart'
    as _i8;
import 'package:flutter_shopping/features/shop_feature/data/repositories/products_repository_impl.dart'
    as _i12;
import 'package:flutter_shopping/features/shop_feature/domain/repositories/banner_repository.dart'
    as _i7;
import 'package:flutter_shopping/features/shop_feature/domain/repositories/products_repository.dart'
    as _i11;
import 'package:flutter_shopping/features/shop_feature/domain/usecases/banner_usecase.dart'
    as _i9;
import 'package:flutter_shopping/features/shop_feature/domain/usecases/products_usecase.dart'
    as _i13;
import 'package:flutter_shopping/features/shop_feature/presentation/bloc/home_bloc/home_bloc.dart'
    as _i14;
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
    gh.lazySingleton<_i4.AppRouter>(() => _i4.AppRouter());
    gh.factory<_i5.AppTheme>(
        () => _i5.AppTheme(appColors: gh<_i3.AppColorsBase>()));
    gh.factory<_i6.BannerRemoteDatasource>(() => _i6.BannerRemoteDatasource());
    gh.factory<_i7.BannerRepository>(() =>
        _i8.BannerRepositoryImpl(datasource: gh<_i6.BannerRemoteDatasource>()));
    gh.factory<_i9.BannerUsecase>(
        () => _i9.BannerUsecase(repository: gh<_i7.BannerRepository>()));
    gh.factory<_i10.ProductsRemoteDatasource>(
        () => _i10.ProductsRemoteDatasource());
    gh.factory<_i11.ProductsRepository>(() => _i12.ProductsRepositoryImpl(
        datasource: gh<_i10.ProductsRemoteDatasource>()));
    gh.factory<_i13.ProductsUsecase>(
        () => _i13.ProductsUsecase(repository: gh<_i11.ProductsRepository>()));
    gh.factory<_i14.HomeBloc>(() => _i14.HomeBloc(
          gh<_i13.ProductsUsecase>(),
          gh<_i9.BannerUsecase>(),
        ));
    return this;
  }
}
