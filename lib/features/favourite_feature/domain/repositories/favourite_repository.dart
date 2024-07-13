import 'package:flutter_shopping/core/resources/data_state.dart';
import 'package:flutter_shopping/features/favourite_feature/data/datasources/app_database.dart';

abstract class FavouriteRepository {
  Future<DataState<List<FavouriteItem>>> getFavourites();

  Future<DataState<FavouriteItem>> getFavourite(int id);

  Future<DataState<bool>> updateFavourite(FavouriteItemsCompanion companion);

  Future<DataState<int>> insertFavourite(FavouriteItemsCompanion companion);

  Future<DataState<int>> deleteFavourite(int id);
}
