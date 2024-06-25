import 'package:flutter_shopping/features/shop_feature/domain/entities/products_entity.dart';

abstract class ProductsStatus {}

class ProductsLoading extends ProductsStatus {}

class ProductsSuccess extends ProductsStatus {
  final ProductsEntity entity;
  ProductsSuccess({required this.entity});
}

class ProductsFail extends ProductsStatus {
  final String error;
  ProductsFail({required this.error});
}
