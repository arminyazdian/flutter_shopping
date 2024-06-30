import 'package:flutter_shopping/core/resources/data_state.dart';
import 'package:flutter_shopping/core/usecases/callable_usecase.dart';
import 'package:flutter_shopping/features/shop_feature/domain/entities/banner_entity.dart';
import 'package:flutter_shopping/features/shop_feature/domain/repositories/banner_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class BannerUsecase implements CallableUsecase<DataState<BannerEntity>, NoParams> {
  final BannerRepository repository;
  BannerUsecase({required this.repository});

  @override
  Future<DataState<BannerEntity>> call(NoParams param) async {
    return await repository.fetchBanner();
  }
}
