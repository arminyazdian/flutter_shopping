import 'package:flutter_shopping/core/resources/data_state.dart';
import 'package:flutter_shopping/features/favourite_feature/data/datasources/app_database.dart';
import 'package:flutter_shopping/features/favourite_feature/data/datasources/favourite_local_datasource.dart';
import 'package:flutter_shopping/features/favourite_feature/domain/repositories/favourite_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: FavouriteRepository)
class FavouriteRepositoryImpl implements FavouriteRepository {
  final FavouriteLocalDatasource datasource;
  FavouriteRepositoryImpl({required this.datasource});

  @override
  Future<DataState<int>> deleteFavourite(int id) async {
    try {
      int response = await datasource.deleteFavourite(id);
      if (response > 0) {
        return DataSuccess(response);
      } else {
        return const DataFail("هیچ محصولی از لیست علاقه مندی ها حذف نشد.");
      }
    } catch (e) {
      return const DataFail("موفقیت آمیز نبود.");
    }
  }

  @override
  Future<DataState<FavouriteItem>> getFavourite(int id) async {
    try {
      FavouriteItem? response = await datasource.getFavourite(id);
      // ignore: unnecessary_null_comparison
      if (response != null) {
        return DataSuccess(response);
      } else {
        return const DataFail("محصولی از لیست علاقه مندی ها یافت نشد.");
      }
    } catch (e) {
      return const DataFail("موفقیت آمیز نبود.");
    }
  }

  @override
  Future<DataState<List<FavouriteItem>>> getFavourites() async {
    try {
      List<FavouriteItem> response = await datasource.getFavourites();
      if (response.isNotEmpty) {
        return DataSuccess(response);
      } else {
        return const DataFail("محصولی از لیست علاقه مندی ها یافت نشد.");
      }
    } catch (e) {
      return const DataFail("موفقیت آمیز نبود.");
    }
  }

  @override
  Future<DataState<int>> insertFavourite(FavouriteItemsCompanion companion) async {
    try {
      int response = await datasource.insertFavourite(companion);
      if (response > 0) {
        return DataSuccess(response);
      } else {
        return const DataFail("محصولی به لیست علاقه مندی ها اضافه نشد.");
      }
    } catch (e) {
      return const DataFail("موفقیت آمیز نبود.");
    }
  }

  @override
  Future<DataState<bool>> updateFavourite(FavouriteItemsCompanion companion) async {
    try {
      bool response = await datasource.updateFavourite(companion);
      if (response) {
        return DataSuccess(response);
      } else {
        return const DataFail("تغییری اعمال نشد.");
      }
    } catch (e) {
      return const DataFail("موفقیت آمیز نبود.");
    }
  }
}
