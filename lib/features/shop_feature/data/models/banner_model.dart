import 'package:flutter_shopping/features/shop_feature/domain/entities/banner_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'banner_model.g.dart';
part 'banner_model.freezed.dart';

@JsonSerializable()
class BannerModel extends BannerEntity {
  BannerModel(List<BannerItems>? items) : super(items: items);

  //The whole json object is inside a list, so we have to put that into a List of dynamic too
  factory BannerModel.fromJson(List<dynamic> json) => _$BannerModelFromJson({"items": json});
}

@freezed
class BannerItems with _$BannerItems {
  const factory BannerItems(
    int? id,
    String? image,
    int? linkType,
    int? linkValue,
  ) = _BannerItems;
  factory BannerItems.fromJson(Map<String, dynamic> json) => _$BannerItemsFromJson(json);
}
