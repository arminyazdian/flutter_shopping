import 'package:flutter_shopping/features/shop_feature/domain/entities/comments_entity.dart';

abstract class CommentsStatus {}

class CommentsLoading extends CommentsStatus {}

class CommentsSuccess extends CommentsStatus {
  final CommentsEntity entity;
  CommentsSuccess({required this.entity});
}

class CommentsFail extends CommentsStatus {
  final String error;
  CommentsFail({required this.error});
}
