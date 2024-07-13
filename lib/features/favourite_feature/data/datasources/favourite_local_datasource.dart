import 'package:flutter_shopping/features/favourite_feature/data/datasources/app_database.dart';
import 'package:injectable/injectable.dart';

@injectable
class FavouriteLocalDatasource {
  final AppDatabase appDatabase;
  FavouriteLocalDatasource({required this.appDatabase});

  Future<List<FavouriteItem>> getFavourites() async {
    return await appDatabase.select(appDatabase.favouriteItems).get();
  }

  Future<FavouriteItem> getFavourite(int id) async {
    return await (appDatabase.select(appDatabase.favouriteItems)..where((tbl) => tbl.id.equals(id))).getSingle();
  }

  Future<bool> updateFavourite(FavouriteItemsCompanion companion) async {
    return await appDatabase.update(appDatabase.favouriteItems).replace(companion);
  }

  Future<int> insertFavourite(FavouriteItemsCompanion companion) async {
    return await appDatabase.into(appDatabase.favouriteItems).insert(companion);
  }

  Future<int> deleteFavourite(int id) async {
    return await (appDatabase.delete(appDatabase.favouriteItems)..where((tbl) => tbl.id.equals(id))).go();
  }
}
