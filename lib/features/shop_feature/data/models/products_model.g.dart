// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductsModel _$ProductsModelFromJson(Map<String, dynamic> json) => ProductsModel(
      (json['items'] as List<dynamic>?)?.map((e) => ProductsItems.fromJson(e as Map<String, dynamic>)).toList(),
    );

// ignore: unused_element
Map<String, dynamic> _$ProductsModelToJson(ProductsModel instance) => <String, dynamic>{
      'items': instance.items,
    };

_$ProductsItemsImpl _$$ProductsItemsImplFromJson(Map<String, dynamic> json) => _$ProductsItemsImpl(
      (json['id'] as num?)?.toInt(),
      json['title'] as String?,
      (json['price'] as num?)?.toInt(),
      (json['discount'] as num?)?.toInt(),
      json['image'] as String?,
      (json['status'] as num?)?.toInt(),
      (json['previousPrice'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ProductsItemsImplToJson(_$ProductsItemsImpl instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'price': instance.price,
      'discount': instance.discount,
      'image': instance.image,
      'status': instance.status,
      'previousPrice': instance.previousPrice,
    };
