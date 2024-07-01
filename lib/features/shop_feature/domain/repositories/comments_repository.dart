import 'package:flutter_shopping/core/resources/data_state.dart';
import 'package:flutter_shopping/features/shop_feature/domain/entities/comments_entity.dart';

abstract class CommentsRepository {
  Future<DataState<CommentsEntity>> fetchComments(int id);
}
