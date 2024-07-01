import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter_shopping/core/utils/consts.dart';
import 'package:injectable/injectable.dart';

@injectable
class CommentsRemoteDatasource {
  Dio dio = Dio(BaseOptions(baseUrl: Consts.baseUrl));
  Future<Response> getComments(int id) async {
    try {
      return await dio.get(Consts.commentsUrl, queryParameters: {"product_id": id}).timeout(Consts.timeout);
    } on TimeoutException catch (_) {
      throw Exception("درخواست به سرور پس از 20 ثانیه به اتمام رسید. لطفا دوباره تلاش کنید.");
    }
  }
}
