import 'package:flutter_shopping/core/resources/data_state.dart';
import 'package:flutter_shopping/features/shop_feature/domain/entities/banner_entity.dart';

abstract class BannerRepository {
  Future<DataState<BannerEntity>> fetchBanner();
}

class NoParams {}
