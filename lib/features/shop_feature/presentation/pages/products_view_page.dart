import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_shopping/core/config/assets.dart';
import 'package:flutter_shopping/core/config/dimensions.dart';
import 'package:flutter_shopping/core/presentation/routes/app_router.dart';
import 'package:flutter_shopping/core/presentation/widgets/big_space_widget.dart';
import 'package:flutter_shopping/core/presentation/widgets/bloc_error_widget.dart';
import 'package:flutter_shopping/core/presentation/widgets/drag_indicator_widget.dart';
import 'package:flutter_shopping/core/presentation/widgets/medium_space.dart';
import 'package:flutter_shopping/core/style/app_theme.dart';
import 'package:flutter_shopping/core/utils/consts.dart';
import 'package:flutter_shopping/dependency_injection/injection.dart';
import 'package:flutter_shopping/features/shop_feature/data/models/products_model.dart';
import 'package:flutter_shopping/features/shop_feature/presentation/bloc/home_bloc/home_bloc.dart';
import 'package:flutter_shopping/features/shop_feature/presentation/widgets/bottom_sheet_tile_widget.dart';
import 'package:flutter_shopping/features/shop_feature/presentation/widgets/products_list_item_widget.dart';

@RoutePage()
class ProductsViewPage extends StatefulWidget implements AutoRouteWrapper {
  final int sort;
  const ProductsViewPage({super.key, required this.sort});

  @override
  State<ProductsViewPage> createState() => _ProductsViewPageState();

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

class _ProductsViewPageState extends State<ProductsViewPage> {
  int sort = 0;

  @override
  void initState() {
    sort = widget.sort;
    loadAll();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    HomeBloc bloc = BlocProvider.of<HomeBloc>(context);
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        if ((state.productsSort0Status.isLoading && sort == 0) ||
            (state.productsSort1Status.isLoading && sort == 1) ||
            (state.productsSort1Status.isLoading && sort == 2) ||
            (state.productsSort1Status.isLoading && sort == 3)) {
          return Scaffold(appBar: AppBar(), body: const Center(child: CircularProgressIndicator()));
        }
        if ((state.productsSort0Status.isFailure && sort == 0) ||
            (state.productsSort1Status.isFailure && sort == 1) ||
            (state.productsSort1Status.isFailure && sort == 2) ||
            (state.productsSort1Status.isFailure && sort == 3)) {
          return Scaffold(appBar: AppBar(), body: BlocError(error: state.productsSort0Error ?? state.productsSort1Error!, onPress: () => loadAll()));
        }
        if ((state.productsSort0Status.isSuccess && sort == 0) ||
            (state.productsSort1Status.isSuccess && sort == 1) ||
            (state.productsSort1Status.isSuccess && sort == 2) ||
            (state.productsSort1Status.isSuccess && sort == 3)) {
          List<ProductsItems> productsItems = sort == 0 ? state.productsSort0Entity!.items! : state.productsSort1Entity!.items!;
          return Scaffold(
            appBar: AppBar(title: Text(bloc.state.appbarTitle!)),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                showModalBottomSheet(
                  enableDrag: true,
                  context: context,
                  builder: (context) {
                    return Directionality(
                      textDirection: TextDirection.rtl,
                      child: ListView(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        children: [
                          const MediumSpace(vertical: true),
                          const DragIndicator(),
                          const MediumSpace(vertical: true),
                          Text("مرتب سازی بر اساس", textAlign: TextAlign.center, style: context.body2Bold),
                          const BigSpace(vertical: true),
                          ListView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: Consts.sortTitles.length,
                            itemBuilder: (context, index) {
                              return BottomSheetTile(
                                title: Consts.sortTitles[index],
                                onTap: () {
                                  sort = index;
                                  bloc.add(HomeEvent.loadProducts(sort: sort));
                                  Navigator.pop(context);
                                },
                                sortState: sort == index,
                              );
                            },
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
              child: const Icon(AssetsBase.sortIcon),
            ),
            body: RefreshIndicator(
              onRefresh: () => loadAll(),
              child: Padding(
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
              ),
            ),
          );
        }

        return const Center();
      },
    );
  }

  Future<void> loadAll() async {
    BlocProvider.of<HomeBloc>(context).add(HomeEvent.loadProducts(sort: sort));
  }
}
