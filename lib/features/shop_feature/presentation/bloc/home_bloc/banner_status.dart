import 'package:flutter_shopping/features/shop_feature/domain/entities/banner_entity.dart';

abstract class BannerStatus {}

class BannerLoading extends BannerStatus {}

class BannerSuccess extends BannerStatus {
  final BannerEntity entity;
  BannerSuccess({required this.entity});
}

class BannerFail extends BannerStatus {
  final String error;
  BannerFail({required this.error});
}
