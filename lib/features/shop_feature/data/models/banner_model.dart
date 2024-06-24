import 'package:flutter_shopping/features/shop_feature/domain/entities/banner_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'banner_model.g.dart';

@JsonSerializable()
class BannerModel extends BannerEntity {
  BannerModel(
    int? id,
    String? image,
    int? linkType,
    int? linkValue,
  ) : super(
          id: id,
          image: image,
          linkType: linkType,
          linkValue: linkValue,
        );

  factory BannerModel.fromJson(Map<String, dynamic> json) => _$BannerModelFromJson(json);
}
