import 'package:dio/dio.dart';
import 'package:flutter_shopping/core/resources/data_state.dart';
import 'package:flutter_shopping/features/shop_feature/data/datasources/products_remote_datasource.dart';
import 'package:flutter_shopping/features/shop_feature/data/models/products_model.dart';
import 'package:flutter_shopping/features/shop_feature/domain/entities/products_entity.dart';
import 'package:flutter_shopping/features/shop_feature/domain/repositories/products_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ProductsRepository)
class ProductsRepositoryImpl implements ProductsRepository {
  final ProductsRemoteDatasource datasource;
  ProductsRepositoryImpl({required this.datasource});

  @override
  Future<DataState<ProductsEntity>> fetchProducts(int sort) async {
    try {
      Response response = await datasource.getProducts(sort);
      if (response.statusCode == 200) {
        ProductsEntity entity = ProductsModel.fromJson(response.data);
        return DataSuccess(entity);
      } else {
        return const DataFail("دریافت اطلاعات با خطا مواجه شد.");
      }
    } catch (e) {
      return const DataFail("عدم اتصال.");
    }
  }
}
