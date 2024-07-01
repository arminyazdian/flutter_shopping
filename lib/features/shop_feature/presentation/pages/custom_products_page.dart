import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_shopping/core/config/dimensions.dart';
import 'package:flutter_shopping/core/presentation/routes/app_router.dart';
import 'package:flutter_shopping/core/presentation/widgets/bloc_error_widget.dart';
import 'package:flutter_shopping/dependency_injection/injection.dart';
import 'package:flutter_shopping/features/shop_feature/data/models/products_model.dart';
import 'package:flutter_shopping/features/shop_feature/presentation/bloc/home_bloc/home_bloc.dart';
import 'package:flutter_shopping/features/shop_feature/presentation/bloc/home_bloc/products_status.dart';
import 'package:flutter_shopping/features/shop_feature/presentation/widgets/products_list_item_widget.dart';

@RoutePage()
class CustomProducts extends StatefulWidget implements AutoRouteWrapper {
  final int productId;
  const CustomProducts({super.key, required this.productId});

  @override
  State<CustomProducts> createState() => _CustomProductsState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: BlocProvider(
        create: (context) => inject<HomeBloc>(),
        child: this,
      ),
    );
  }
}

class _CustomProductsState extends State<CustomProducts> {
  int productId = 0;
  String appbarTitle = "", textContaining = "";
  @override
  void initState() {
    productId = widget.productId;
    initLoad();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appbarTitle),
      ),
      body: RefreshIndicator(
        onRefresh: () => loadAll(),
        child: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            if (state.productsStatusSort0 is ProductsLoading) {
              return const Center(child: CircularProgressIndicator());
            }
            if (state.productsStatusSort0 is ProductsFail) {
              return BlocError(error: (state.productsStatusSort0 as ProductsFail).error, onPress: () => loadAll());
            }
            if (state.productsStatusSort0 is ProductsSuccess) {
              List<ProductsItems> productsItems = (state.productsStatusSort0 as ProductsSuccess).entity.items!;
              productsItems.removeWhere((product) => !product.title!.contains(textContaining));

              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: Dimensions.mainPaddingHorizontal),
                child: SizedBox(
                  child: ListView.builder(
                    itemCount: productsItems.length,
                    itemBuilder: (context, index) {
                      int previousPrice = productsItems[index].price! + productsItems[index].discount!;
                      return ProductsListItem(
                        imagePath: productsItems[index].image!,
                        productTitle: productsItems[index].title!,
                        previousPrice: previousPrice,
                        currentPrice: productsItems[index].price!,
                        onTap: () {
                          AutoRouter.of(context).push(ProductPageRoute(id: productsItems[index].id!));
                        },
                      );
                    },
                  ),
                ),
              );
            }
            return const Center();
          },
        ),
      ),
    );
  }

  Future<void> loadAll() async {
    BlocProvider.of<HomeBloc>(context).add(LoadProductsEvent(sort: 0));
  }

  void initLoad() {
    if (productId == 1001) {
      appbarTitle = "کفش های مناسب دویدن";
      textContaining = "ورزشی";
    } else if (productId == 1002) {
      appbarTitle = "کفش های مخصوص پیاده روی";
      textContaining = "پیاده روی";
    } else {
      appbarTitle = "کفش های مخصوص بسکتبال";
      textContaining = "بسکتبال";
    }
    loadAll();
  }
}
