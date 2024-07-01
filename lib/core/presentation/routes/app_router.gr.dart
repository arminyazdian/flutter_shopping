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
    CustomProductsRoute.name: (routeData) {
      final args = routeData.argsAs<CustomProductsRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(
            child: CustomProducts(
          key: args.key,
          productId: args.productId,
        )),
      );
    },
    HomePageRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(child: const HomePage()),
      );
    },
    ProductPageRoute.name: (routeData) {
      final args = routeData.argsAs<ProductPageRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(
            child: ProductPage(
          key: args.key,
          id: args.id,
        )),
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
/// [CustomProducts]
class CustomProductsRoute extends PageRouteInfo<CustomProductsRouteArgs> {
  CustomProductsRoute({
    Key? key,
    required int productId,
    List<PageRouteInfo>? children,
  }) : super(
          CustomProductsRoute.name,
          args: CustomProductsRouteArgs(
            key: key,
            productId: productId,
          ),
          initialChildren: children,
        );

  static const String name = 'CustomProductsRoute';

  static const PageInfo<CustomProductsRouteArgs> page =
      PageInfo<CustomProductsRouteArgs>(name);
}

class CustomProductsRouteArgs {
  const CustomProductsRouteArgs({
    this.key,
    required this.productId,
  });

  final Key? key;

  final int productId;

  @override
  String toString() {
    return 'CustomProductsRouteArgs{key: $key, productId: $productId}';
  }
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
/// [ProductPage]
class ProductPageRoute extends PageRouteInfo<ProductPageRouteArgs> {
  ProductPageRoute({
    Key? key,
    required int id,
    List<PageRouteInfo>? children,
  }) : super(
          ProductPageRoute.name,
          args: ProductPageRouteArgs(
            key: key,
            id: id,
          ),
          initialChildren: children,
        );

  static const String name = 'ProductPageRoute';

  static const PageInfo<ProductPageRouteArgs> page =
      PageInfo<ProductPageRouteArgs>(name);
}

class ProductPageRouteArgs {
  const ProductPageRouteArgs({
    this.key,
    required this.id,
  });

  final Key? key;

  final int id;

  @override
  String toString() {
    return 'ProductPageRouteArgs{key: $key, id: $id}';
  }
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

  static const PageInfo<ProductsViewPageRouteArgs> page =
      PageInfo<ProductsViewPageRouteArgs>(name);
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
