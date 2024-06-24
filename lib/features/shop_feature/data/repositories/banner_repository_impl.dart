import 'package:dio/dio.dart';
import 'package:flutter_shopping/core/resources/data_state.dart';
import 'package:flutter_shopping/features/shop_feature/data/datasources/banner_remote_datasource.dart';
import 'package:flutter_shopping/features/shop_feature/data/models/banner_model.dart';
import 'package:flutter_shopping/features/shop_feature/domain/entities/banner_entity.dart';
import 'package:flutter_shopping/features/shop_feature/domain/repositories/banner_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: BannerRepository)
class BannerRepositoryImpl implements BannerRepository {
  final BannerRemoteDatasource datasource;
  BannerRepositoryImpl({required this.datasource});

  @override
  Future<DataState<BannerEntity>> fetchBanner() async {
    try {
      Response response = await datasource.getBanner();
      if (response.statusCode == 200) {
        BannerEntity entity = BannerModel.fromJson(response.data);
        return DataSuccess(entity);
      } else {
        return const DataFail("دریافت بنر با خطا مواجه شد.");
      }
    } catch (e) {
      return const DataFail("عدم اتصال.");
    }
  }
}
