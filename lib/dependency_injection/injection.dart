import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'injection.config.dart';

final GetIt getIt = GetIt.instance;
@InjectableInit(initializerName: r'$initGetIt')
Future<void> configureDependencies() async {
  getIt.$initGetIt();
}

T inject<T extends Object>({dynamic param1, dynamic param2}) => getIt.get<T>(param1: param1, param2: param2);
