// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banner_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BannerModel _$BannerModelFromJson(Map<String, dynamic> json) => BannerModel(
      (json['id'] as num?)?.toInt(),
      json['image'] as String?,
      (json['linkType'] as num?)?.toInt(),
      (json['linkValue'] as num?)?.toInt(),
    );

Map<String, dynamic> _$BannerModelToJson(BannerModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
      'linkType': instance.linkType,
      'linkValue': instance.linkValue,
    };
