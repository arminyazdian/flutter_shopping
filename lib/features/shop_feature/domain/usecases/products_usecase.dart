import 'package:flutter_shopping/core/resources/data_state.dart';
import 'package:flutter_shopping/core/usecases/callable_usecase.dart';
import 'package:flutter_shopping/features/shop_feature/domain/entities/products_entity.dart';
import 'package:flutter_shopping/features/shop_feature/domain/repositories/products_repository.dart';

class ProductsUsecase implements CallableUsecase<DataState<ProductsEntity>, int> {
  final ProductsRepository repository;
  ProductsUsecase({required this.repository});

  @override
  Future<DataState<ProductsEntity>> call(int param) async {
    return await repository.fetchProducts(param);
  }
}
