import 'package:dio/dio.dart';
import 'package:flutter_shopping/core/resources/data_state.dart';
import 'package:flutter_shopping/features/shop_feature/data/datasources/comments_remote_datasource.dart';
import 'package:flutter_shopping/features/shop_feature/data/models/comments_model.dart';
import 'package:flutter_shopping/features/shop_feature/domain/entities/comments_entity.dart';
import 'package:flutter_shopping/features/shop_feature/domain/repositories/comments_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: CommentsRepository)
class CommentsRepositoryImpl implements CommentsRepository {
  final CommentsRemoteDatasource datasource;
  CommentsRepositoryImpl({required this.datasource});

  @override
  Future<DataState<CommentsEntity>> fetchComments(int id) async {
    try {
      Response response = await datasource.getComments(id);
      if (response.statusCode == 200) {
        CommentsEntity entity = CommentsModel.fromJson(response.data);
        return DataSuccess(entity);
      } else {
        return const DataFail("دریافت بنر با خطا مواجه شد.");
      }
    } catch (e) {
      return const DataFail("عدم اتصال.");
    }
  }
}
