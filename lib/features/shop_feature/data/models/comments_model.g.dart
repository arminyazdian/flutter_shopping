// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comments_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CommentsModel _$CommentsModelFromJson(Map<String, dynamic> json) => CommentsModel(
      (json['items'] as List<dynamic>?)?.map((e) => CommentsItems.fromJson(e as Map<String, dynamic>)).toList(),
    );

// ignore: unused_element
Map<String, dynamic> _$CommentsModelToJson(CommentsModel instance) => <String, dynamic>{
      'items': instance.items,
    };

_$CommentsItemsImpl _$$CommentsItemsImplFromJson(Map<String, dynamic> json) => _$CommentsItemsImpl(
      (json['id'] as num?)?.toInt(),
      json['title'] as String?,
      json['content'] as String?,
      json['date'] as String?,
      json['author'] == null ? null : Author.fromJson(json['author'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CommentsItemsImplToJson(_$CommentsItemsImpl instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'content': instance.content,
      'date': instance.date,
      'author': instance.author,
    };

_$AuthorImpl _$$AuthorImplFromJson(Map<String, dynamic> json) => _$AuthorImpl(
      json['email'] as String?,
    );

Map<String, dynamic> _$$AuthorImplToJson(_$AuthorImpl instance) => <String, dynamic>{
      'email': instance.email,
    };
