import 'package:dio/dio.dart';
import 'package:flutter_shopping/core/utils/consts.dart';
import 'package:injectable/injectable.dart';

@injectable
class BannerRemoteDatasource {
  Dio dio = Dio(BaseOptions(baseUrl: Consts.baseUrl));
  Future<Response> getBanner() async {
    return dio.get(Consts.bannerUrl);
  }
}
