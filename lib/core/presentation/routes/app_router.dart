import 'package:auto_route/auto_route.dart';
import 'package:flutter_shopping/features/shop_feature/presentation/pages/home_page.dart';
import 'package:injectable/injectable.dart';
part 'app_router.gr.dart';

@AutoRouterConfig(
  replaceInRouteName: 'Page,Route,Screen',
)
@lazySingleton
class AppRouter extends _$AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  final List<AutoRoute> routes = [AutoRoute(page: HomePageRoute.page, initial: true)];
}
