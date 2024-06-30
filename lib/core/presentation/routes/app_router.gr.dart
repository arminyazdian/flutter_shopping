// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    HomePageRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(child: const HomePage()),
      );
    },
    ProductsViewPageRoute.name: (routeData) {
      final args = routeData.argsAs<ProductsViewPageRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(
            child: ProductsViewPage(
          key: args.key,
          sort: args.sort,
        )),
      );
    },
  };
}

/// generated route for
/// [HomePage]
class HomePageRoute extends PageRouteInfo<void> {
  const HomePageRoute({List<PageRouteInfo>? children})
      : super(
          HomePageRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomePageRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ProductsViewPage]
class ProductsViewPageRoute extends PageRouteInfo<ProductsViewPageRouteArgs> {
  ProductsViewPageRoute({
    Key? key,
    required int sort,
    List<PageRouteInfo>? children,
  }) : super(
          ProductsViewPageRoute.name,
          args: ProductsViewPageRouteArgs(
            key: key,
            sort: sort,
          ),
          initialChildren: children,
        );

  static const String name = 'ProductsViewPageRoute';

  static const PageInfo<ProductsViewPageRouteArgs> page = PageInfo<ProductsViewPageRouteArgs>(name);
}

class ProductsViewPageRouteArgs {
  const ProductsViewPageRouteArgs({
    this.key,
    required this.sort,
  });

  final Key? key;

  final int sort;

  @override
  String toString() {
    return 'ProductsViewPageRouteArgs{key: $key, sort: $sort}';
  }
}
