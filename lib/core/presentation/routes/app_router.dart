import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shopping/features/shop_feature/presentation/pages/custom_products_page.dart';
import 'package:flutter_shopping/features/shop_feature/presentation/pages/home_page.dart';
import 'package:flutter_shopping/features/shop_feature/presentation/pages/main_container_page.dart';
import 'package:flutter_shopping/features/shop_feature/presentation/pages/product_page.dart';
import 'package:flutter_shopping/features/shop_feature/presentation/pages/products_view_page.dart';
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
  final List<AutoRoute> routes = [
    AutoRoute(page: MainContainerPageRoute.page, initial: true),
    AutoRoute(page: HomePageRoute.page),
    AutoRoute(page: ProductsViewPageRoute.page),
    AutoRoute(page: CustomProductsRoute.page),
    AutoRoute(page: ProductPageRoute.page)
  ];
}
