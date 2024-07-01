import 'package:flutter_shopping/features/shop_feature/domain/entities/comments_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'comments_model.g.dart';
part 'comments_model.freezed.dart';

@JsonSerializable()
class CommentsModel extends CommentsEntity {
  CommentsModel(List<CommentsItems>? items) : super(items: items);

  //The whole json object is inside a list, so we have to put that into a List of dynamic too
  factory CommentsModel.fromJson(List<dynamic> json) => _$CommentsModelFromJson({"items": json});
}

@freezed
class CommentsItems with _$CommentsItems {
  const factory CommentsItems(
    int? id,
    String? title,
    String? content,
    String? date,
    Author? author,
  ) = _CommentsItems;

  factory CommentsItems.fromJson(Map<String, dynamic> json) => _$CommentsItemsFromJson(json);
}

@freezed
class Author with _$Author {
  const factory Author(String? email) = _Author;

  factory Author.fromJson(Map<String, dynamic> json) => _$AuthorFromJson(json);
}
