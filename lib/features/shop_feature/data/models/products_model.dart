import 'package:flutter_shopping/features/shop_feature/domain/entities/products_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'products_model.g.dart';
part 'products_model.freezed.dart';

@JsonSerializable()
class ProductsModel extends ProductsEntity {
  ProductsModel(List<ProductsItems>? items) : super(items: items);

  //The whole json object is inside a list, so we have to put that into a List of dynamic too
  factory ProductsModel.fromJson(List<dynamic> json) => _$ProductsModelFromJson({"items": json});
}

@freezed
class ProductsItems with _$ProductsItems {
  const factory ProductsItems(
    int? id,
    String? title,
    int? price,
    int? discount,
    String? image,
    int? status,
    int? previousPrice,
  ) = _ProductsItems;

  factory ProductsItems.fromJson(Map<String, dynamic> json) => _$ProductsItemsFromJson(json);
}
