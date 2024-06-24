import 'package:dio/dio.dart';
import 'package:flutter_shopping/core/utils/consts.dart';
import 'package:injectable/injectable.dart';

@injectable
class ProductsRemoteDatasource {
  Dio dio = Dio(BaseOptions(baseUrl: Consts.baseUrl));
  Future<Response> getProducts(int sort) async {
    return await dio.get(
      Consts.productUrl,
      queryParameters: {
        "sort": sort,
      },
    );
  }
}
