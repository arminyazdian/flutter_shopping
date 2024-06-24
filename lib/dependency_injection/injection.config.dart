// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter_shopping/core/style/app_color.dart' as _i3;
import 'package:flutter_shopping/core/style/app_theme.dart' as _i4;
import 'package:flutter_shopping/features/shop_feature/data/datasources/banner_remote_datasource.dart'
    as _i5;
import 'package:flutter_shopping/features/shop_feature/data/datasources/products_remote_datasource.dart'
    as _i8;
import 'package:flutter_shopping/features/shop_feature/data/repositories/banner_repository_impl.dart'
    as _i7;
import 'package:flutter_shopping/features/shop_feature/data/repositories/products_repository_impl.dart'
    as _i10;
import 'package:flutter_shopping/features/shop_feature/domain/repositories/banner_repository.dart'
    as _i6;
import 'package:flutter_shopping/features/shop_feature/domain/repositories/products_repository.dart'
    as _i9;
import 'package:flutter_shopping/features/shop_feature/domain/usecases/products_usecase.dart'
    as _i11;
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
    gh.factory<_i4.AppTheme>(
        () => _i4.AppTheme(appColors: gh<_i3.AppColorsBase>()));
    gh.factory<_i5.BannerRemoteDatasource>(() => _i5.BannerRemoteDatasource());
    gh.factory<_i6.BannerRepository>(() =>
        _i7.BannerRepositoryImpl(datasource: gh<_i5.BannerRemoteDatasource>()));
    gh.factory<_i8.ProductsRemoteDatasource>(
        () => _i8.ProductsRemoteDatasource());
    gh.factory<_i9.ProductsRepository>(() => _i10.ProductsRepositoryImpl(
        datasource: gh<_i8.ProductsRemoteDatasource>()));
    gh.factory<_i11.ProductsUsecase>(
        () => _i11.ProductsUsecase(repository: gh<_i9.ProductsRepository>()));
    return this;
  }
}
