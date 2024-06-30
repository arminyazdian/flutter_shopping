import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shopping/core/config/dimensions.dart';
import 'package:flutter_shopping/core/presentation/widgets/network_image_progressbar_widget.dart';
import 'package:flutter_shopping/core/presentation/widgets/vertical_big_space_widget.dart';
import 'package:flutter_shopping/core/presentation/widgets/vertical_medium_space.dart';
import 'package:flutter_shopping/core/presentation/widgets/vertical_small_space_widget.dart';
import 'package:flutter_shopping/core/style/app_theme.dart';
import 'package:flutter_shopping/dependency_injection/injection.dart';
import 'package:flutter_shopping/features/shop_feature/data/models/banner_model.dart';
import 'package:flutter_shopping/features/shop_feature/data/models/products_model.dart';
import 'package:flutter_shopping/features/shop_feature/presentation/bloc/home_bloc/banner_status.dart';
import 'package:flutter_shopping/features/shop_feature/presentation/bloc/home_bloc/home_bloc.dart';
import 'package:flutter_shopping/features/shop_feature/presentation/bloc/home_bloc/products_status.dart';
import 'package:flutter_shopping/features/shop_feature/presentation/widgets/appbar_title_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_shopping/features/shop_feature/presentation/widgets/banner_slide_widget.dart';
import 'package:flutter_shopping/features/shop_feature/presentation/widgets/header_row_widget.dart';
import 'package:flutter_shopping/features/shop_feature/presentation/widgets/products_card_widget.dart';

@RoutePage()
class HomePage extends StatefulWidget implements AutoRouteWrapper {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();

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

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    loadAll();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppBarTitle(text: "نایک مارکت"),
      ),
      body: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          if (state.bannerStatus is BannerLoading || state.productsStatusSort0 is ProductsLoading || state.productsStatusSort1 is ProductsLoading) {
            return const Center(child: CircularProgressIndicator());
          }
          if (state.productsStatusSort0 is ProductsFail || state.bannerStatus is BannerFail || state.productsStatusSort1 is ProductsFail) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text((state.productsStatusSort0 as ProductsFail).error, style: context.body1Bold),
                  const VerticalMediumSpace(),
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
          if (state.bannerStatus is BannerSuccess && state.productsStatusSort0 is ProductsSuccess && state.productsStatusSort1 is ProductsSuccess) {
            List<BannerItems> bannerItems = (state.bannerStatus as BannerSuccess).entity.items!;
            List<ProductsItems> productsItemsSort0 = (state.productsStatusSort0 as ProductsSuccess).entity.items!;
            List<ProductsItems> productsItemsSort1 = (state.productsStatusSort1 as ProductsSuccess).entity.items!;

            return SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(Dimensions.mainPaddingHorizontal, Dimensions.mainPaddingVertical, Dimensions.mainPaddingHorizontal, 0),
                    child: Column(
                      children: [
                        const TextField(
                          maxLines: 1,
                          decoration: InputDecoration(
                            hintText: "جستجو...",
                            prefixIcon: Icon(Icons.search_rounded),
                            border: OutlineInputBorder(),
                            contentPadding: EdgeInsets.all(Dimensions.textFieldPadding),
                          ),
                        ),
                        const VerticalBigSpace(),
                        BannerSlide(
                          itemCount: bannerItems.length,
                          itemBuilder: (context, index, realIndex) {
                            return Image.network(
                              bannerItems[index].image!,
                              fit: BoxFit.fill,
                              loadingBuilder: (context, child, loadingProgress) {
                                if (loadingProgress == null) return child;
                                return const NetworkImageProgressbar(height: 500, width: double.infinity);
                              },
                            );
                          },
                        ),
                        const VerticalMediumSpace(),
                        const HeaderRow(titleText: "جدیدترین ها", buttonText: "مشاهده همه"),
                        const VerticalSmallSpace(),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 310,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        int previousPrice = productsItemsSort0[index].price! + productsItemsSort0[index].discount!;
                        return ProductsCard(
                          imagePath: productsItemsSort0[index].image!,
                          productTitle: productsItemsSort0[index].title!,
                          previousPrice: previousPrice,
                          currentPrice: productsItemsSort0[index].price!,
                        );
                      },
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(Dimensions.mainPaddingHorizontal, Dimensions.mediumVerticalSpace, Dimensions.mainPaddingHorizontal, Dimensions.smallVerticalSpace),
                    child: HeaderRow(titleText: "پربازدید ها", buttonText: "مشاهده همه"),
                  ),
                  SizedBox(
                    height: 310,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        int previousPrice = productsItemsSort1[index].price! + productsItemsSort1[index].discount!;
                        return ProductsCard(
                          imagePath: productsItemsSort1[index].image!,
                          productTitle: productsItemsSort1[index].title!,
                          previousPrice: previousPrice,
                          currentPrice: productsItemsSort1[index].price!,
                        );
                      },
                    ),
                  ),
                ],
              ),
            );
          }
          return const Center();
        },
      ),
    );
  }

  void loadAll() {
    BlocProvider.of<HomeBloc>(context).add(LoadProductsEvent(sort: 0));
    BlocProvider.of<HomeBloc>(context).add(const LoadBannerEvent());
    BlocProvider.of<HomeBloc>(context).add(LoadProductsEvent(sort: 1));
  }
}
