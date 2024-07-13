import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shopping/core/config/assets.dart';
import 'package:flutter_shopping/core/config/dimensions.dart';
import 'package:flutter_shopping/core/presentation/routes/app_router.dart';
import 'package:flutter_shopping/core/presentation/widgets/bloc_error_widget.dart';
import 'package:flutter_shopping/core/presentation/widgets/network_image_progressbar_widget.dart';
import 'package:flutter_shopping/core/presentation/widgets/big_space_widget.dart';
import 'package:flutter_shopping/core/presentation/widgets/medium_space.dart';
import 'package:flutter_shopping/core/presentation/widgets/small_space_widget.dart';
import 'package:flutter_shopping/core/style/app_theme.dart';
import 'package:flutter_shopping/features/shop_feature/data/models/banner_model.dart';
import 'package:flutter_shopping/features/shop_feature/data/models/products_model.dart';
import 'package:flutter_shopping/features/shop_feature/presentation/bloc/home_bloc/home_bloc.dart';
import 'package:flutter_shopping/features/shop_feature/presentation/widgets/appbar_title_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_shopping/features/shop_feature/presentation/widgets/banner_slide_widget.dart';
import 'package:flutter_shopping/features/shop_feature/presentation/widgets/header_row_widget.dart';
import 'package:flutter_shopping/features/shop_feature/presentation/widgets/products_card_widget.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';

@RoutePage()
class HomePage extends StatefulWidget implements AutoRouteWrapper {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: this,
    );
  }
}

class _HomePageState extends State<HomePage> with AutomaticKeepAliveClientMixin {
  final TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    loadAll();
    searchController.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: AppBar(
        title: const AppBarTitle(text: "نایک مارکت"),
      ),
      body: RefreshIndicator(
        onRefresh: () => loadAll(),
        child: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            if (state.bannerStatus.isLoading || state.productsSort0Status.isLoading || state.productsSort1Status.isLoading) {
              return const Center(child: CircularProgressIndicator());
            }
            if (state.productsSort0Status.isFailure || state.productsSort1Status.isFailure || state.bannerStatus.isFailure) {
              return BlocError(error: state.productsSort0Error ?? state.productsSort1Error ?? state.bannerError!, onPress: () => loadAll());
            }
            if (state.productsSort0Status.isSuccess && state.productsSort1Status.isSuccess && state.bannerStatus.isSuccess) {
              List<BannerItems> bannerItems = state.bannerEntity!.items!;
              List<ProductsItems> productsItemsSort0 = state.productsSort0Entity!.items!;
              List<ProductsItems> productsItemsSort1 = state.productsSort1Entity!.items!;
              List<ProductsItems> productsSearchFilter = productsItemsSort0;

              return SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(Dimensions.mainPaddingHorizontal, Dimensions.mainPaddingVertical, Dimensions.mainPaddingHorizontal, 0),
                      child: Column(
                        children: [
                          TypeAheadField(
                            noItemsFoundBuilder: (context) => const ListTile(title: Text("موردی پیدا نشد", textDirection: TextDirection.rtl)),
                            textFieldConfiguration: TextFieldConfiguration(
                              controller: searchController,
                              decoration: InputDecoration(
                                hintText: "جستجو...",
                                prefixIcon: const Icon(AssetsBase.searchIcon),
                                suffixIcon: searchController.text == ""
                                    ? null
                                    : IconButton(
                                        onPressed: () {
                                          searchController.text = "";
                                        },
                                        icon: Icon(AssetsBase.closeIcon, color: Theme.of(context).primaryColor),
                                      ),
                                border: const OutlineInputBorder(),
                                contentPadding: const EdgeInsets.all(Dimensions.textFieldPadding),
                              ),
                            ),
                            suggestionsCallback: (suggest) {
                              return productsSearchFilter.where((product) => product.title!.toLowerCase().contains(suggest.toLowerCase()));
                            },
                            itemBuilder: (context, itemData) {
                              return Directionality(
                                textDirection: TextDirection.rtl,
                                child: ListTile(
                                  title: Text(itemData.title!),
                                  subtitle: Text("${itemData.price!} تومان"),
                                  leading: Image.network(itemData.image!),
                                ),
                              );
                            },
                            onSuggestionSelected: (suggestion) {
                              AutoRouter.of(context).push(ProductPageRoute(id: suggestion.id!));
                            },
                          ),
                          const BigSpace(vertical: true),
                          BannerSlide(
                            itemCount: bannerItems.length,
                            itemBuilder: (context, index, realIndex) {
                              return GestureDetector(
                                onTap: () => AutoRouter.of(context).push(CustomProductsRoute(productId: bannerItems[index].id!)),
                                child: Image.network(
                                  bannerItems[index].image!,
                                  fit: BoxFit.fill,
                                  errorBuilder: (context, error, stackTrace) {
                                    return Container(
                                      color: Theme.of(context).colorScheme.items,
                                      height: 500,
                                      width: double.infinity,
                                      child: const Center(
                                        child: Text("خطا در دریافت تصویر"),
                                      ),
                                    );
                                  },
                                  loadingBuilder: (context, child, loadingProgress) {
                                    if (loadingProgress == null) return child;
                                    return const NetworkImageProgressbar(height: 500, width: double.infinity);
                                  },
                                ),
                              );
                            },
                          ),
                          const MediumSpace(vertical: true),
                          HeaderRow(
                              titleText: "جدیدترین ها",
                              buttonText: "مشاهده همه",
                              buttonPress: () {
                                AutoRouter.of(context).push(ProductsViewPageRoute(sort: 0));
                              }),
                          const SmallSpace(vertical: true),
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
                            onTap: () {
                              AutoRouter.of(context).push(ProductPageRoute(id: productsItemsSort0[index].id!));
                            },
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(Dimensions.mainPaddingHorizontal, Dimensions.mediumSpace, Dimensions.mainPaddingHorizontal, Dimensions.smallSpace),
                      child: HeaderRow(
                          titleText: "پربازدیدترین ها",
                          buttonText: "مشاهده همه",
                          buttonPress: () {
                            AutoRouter.of(context).push(ProductsViewPageRoute(sort: 1));
                          }),
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
                            onTap: () {
                              AutoRouter.of(context).push(ProductPageRoute(id: productsItemsSort1[index].id!));
                            },
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
      ),
    );
  }

  Future<void> loadAll() async {
    BlocProvider.of<HomeBloc>(context).add(const HomeEvent.loadProducts(sort: 0));
    BlocProvider.of<HomeBloc>(context).add(const HomeEvent.loadProducts(sort: 1));
    BlocProvider.of<HomeBloc>(context).add(const HomeEvent.loadBanner());
  }
}
