import 'package:flutter_shopping/core/resources/data_state.dart';
import 'package:flutter_shopping/features/shop_feature/domain/entities/products_entity.dart';

abstract class ProductsRepository {
  Future<DataState<ProductsEntity>> fetchProducts(int sort);
}
