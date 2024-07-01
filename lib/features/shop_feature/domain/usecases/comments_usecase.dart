import 'package:flutter_shopping/core/resources/data_state.dart';
import 'package:flutter_shopping/core/usecases/callable_usecase.dart';
import 'package:flutter_shopping/features/shop_feature/domain/entities/comments_entity.dart';
import 'package:flutter_shopping/features/shop_feature/domain/repositories/comments_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class CommentsUsecase implements CallableUsecase<DataState<CommentsEntity>, int> {
  final CommentsRepository repository;
  CommentsUsecase({required this.repository});

  @override
  Future<DataState<CommentsEntity>> call(int param) async {
    return await repository.fetchComments(param);
  }
}
