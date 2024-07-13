import 'package:flutter_shopping/core/resources/data_state.dart';
import 'package:flutter_shopping/core/usecases/callable_usecase.dart';
import 'package:flutter_shopping/features/favourite_feature/domain/repositories/favourite_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class FavouriteDelete extends CallableUsecase<DataState<int>, int> {
  final FavouriteRepository repository;
  FavouriteDelete({required this.repository});

  @override
  Future<DataState<int>> call(int param) {
    return repository.deleteFavourite(param);
  }
}
