import 'package:flutter_shopping/features/shop_feature/domain/entities/products_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'products_model.g.dart';

@JsonSerializable()
class ProductsModel extends ProductsEntity {
  ProductsModel(
    int? id,
    String? title,
    int? price,
    int? discount,
    String? image,
    int? status,
    int? previousPrice,
  ) : super(
          id: id,
          title: title,
          price: price,
          discount: discount,
          image: image,
          status: status,
          previousPrice: previousPrice,
        );
  factory ProductsModel.fromJson(Map<String, dynamic> json) => _$ProductsModelFromJson(json);
}
