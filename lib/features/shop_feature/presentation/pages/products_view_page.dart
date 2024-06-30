import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_shopping/core/config/assets.dart';
import 'package:flutter_shopping/core/config/dimensions.dart';
import 'package:flutter_shopping/core/presentation/widgets/big_space_widget.dart';
import 'package:flutter_shopping/core/presentation/widgets/drag_indicator_widget.dart';
import 'package:flutter_shopping/core/presentation/widgets/medium_space.dart';
import 'package:flutter_shopping/core/style/app_theme.dart';
import 'package:flutter_shopping/dependency_injection/injection.dart';
import 'package:flutter_shopping/features/shop_feature/data/models/products_model.dart';
import 'package:flutter_shopping/features/shop_feature/presentation/bloc/home_bloc/home_bloc.dart';
import 'package:flutter_shopping/features/shop_feature/presentation/bloc/home_bloc/products_status.dart';
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
  String appbarTitle = "";
  int sort = 0;
  @override
  void initState() {
    sort = widget.sort;
    changeSort(sort);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appbarTitle),
      ),
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
                  children: [
                    const MediumSpace(vertical: true),
                    const DragIndicator(),
                    const MediumSpace(vertical: true),
                    Text("مرتب سازی بر اساس", textAlign: TextAlign.center, style: context.body2Bold),
                    const BigSpace(vertical: true),
                    BottomSheetTile(
                      title: "جدیدترین",
                      onTap: () => setState(() {
                        changeSort(0);
                        Navigator.pop(context);
                      }),
                      sortState: sort == 0,
                    ),
                    BottomSheetTile(
                      title: "پربازدیدترین",
                      onTap: () => setState(() {
                        changeSort(1);
                        Navigator.pop(context);
                      }),
                      sortState: sort == 1,
                    ),
                    BottomSheetTile(
                      title: "گرانترین",
                      onTap: () => setState(() {
                        changeSort(2);
                        Navigator.pop(context);
                      }),
                      sortState: sort == 2,
                    ),
                    BottomSheetTile(
                      title: "ارزانترین",
                      onTap: () => setState(() {
                        changeSort(3);
                        Navigator.pop(context);
                      }),
                      sortState: sort == 3,
                    ),
                  ],
                ),
              );
            },
          );
        },
        child: const Icon(AssetsBase.sortIcon),
      ),
      body: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          if ((state.productsStatusSort0 is ProductsLoading && sort == 0) ||
              (state.productsStatusSort1 is ProductsLoading && sort == 1) ||
              (state.productsStatusSort1 is ProductsLoading && sort == 2) ||
              (state.productsStatusSort1 is ProductsLoading && sort == 3)) {
            return const Center(child: CircularProgressIndicator());
          }
          if ((state.productsStatusSort0 is ProductsFail && sort == 0) ||
              (state.productsStatusSort1 is ProductsFail && sort == 1) ||
              (state.productsStatusSort1 is ProductsFail && sort == 2) ||
              (state.productsStatusSort1 is ProductsFail && sort == 3)) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text((state.productsStatusSort0 as ProductsFail).error, style: context.body1Bold),
                  const MediumSpace(vertical: true),
                  FilledButton(
                    onPressed: () {
                      loadAll();
                    },
                    child: const Text("بارگذاری مجدد"),
                  ),
                ],
              ),
            );
          }
          if ((state.productsStatusSort0 is ProductsSuccess && sort == 0) ||
              (state.productsStatusSort1 is ProductsSuccess && sort == 1) ||
              (state.productsStatusSort1 is ProductsSuccess && sort == 2) ||
              (state.productsStatusSort1 is ProductsSuccess && sort == 3)) {
            List<ProductsItems> productsItems =
                sort == 0 ? (state.productsStatusSort0 as ProductsSuccess).entity.items! : (state.productsStatusSort1 as ProductsSuccess).entity.items!;
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
                    );
                  },
                ),
              ),
            );
          }
          return const Center();
        },
      ),
    );
  }

  void loadAll() {
    BlocProvider.of<HomeBloc>(context).add(LoadProductsEvent(sort: sort));
  }

  void changeSort(int sort) {
    BlocProvider.of<HomeBloc>(context).add(LoadProductsEvent(sort: sort));
    this.sort = sort;
    if (sort == 0) {
      appbarTitle = "جدیدترین ها";
    } else if (sort == 1) {
      appbarTitle = "پربازدیدترین ها";
    } else if (sort == 2) {
      appbarTitle = "گرانترین ها";
    } else if (sort == 3) {
      appbarTitle = "ارزانترین ها";
    }
  }
}
