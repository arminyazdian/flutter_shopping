import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter_shopping/core/utils/consts.dart';
import 'package:injectable/injectable.dart';

@injectable
class BannerRemoteDatasource {
  final Dio dio = Dio(BaseOptions(baseUrl: Consts.baseUrl));

  Future<Response> getBanner() async {
    try {
      return await dio.get(Consts.bannerUrl).timeout(Consts.timeout);
    } on TimeoutException catch (_) {
      throw Exception("درخواست به سرور پس از 20 ثانیه به اتمام رسید. لطفا دوباره تلاش کنید.");
    }
  }
}
