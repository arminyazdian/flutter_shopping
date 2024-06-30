// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banner_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BannerModel _$BannerModelFromJson(Map<String, dynamic> json) => BannerModel(
      (json['items'] as List<dynamic>?)
          ?.map((e) => BannerItems.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$BannerModelToJson(BannerModel instance) =>
    <String, dynamic>{
      'items': instance.items,
    };

_$BannerItemsImpl _$$BannerItemsImplFromJson(Map<String, dynamic> json) =>
    _$BannerItemsImpl(
      (json['id'] as num?)?.toInt(),
      json['image'] as String?,
      (json['linkType'] as num?)?.toInt(),
      (json['linkValue'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$BannerItemsImplToJson(_$BannerItemsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
      'linkType': instance.linkType,
      'linkValue': instance.linkValue,
    };
