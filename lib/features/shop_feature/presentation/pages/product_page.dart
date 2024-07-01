import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_shopping/core/config/assets.dart';
import 'package:flutter_shopping/core/config/dimensions.dart';
import 'package:flutter_shopping/core/presentation/widgets/big_space_widget.dart';
import 'package:flutter_shopping/core/presentation/widgets/bloc_error_widget.dart';
import 'package:flutter_shopping/core/presentation/widgets/bottom_navigation_widget.dart';
import 'package:flutter_shopping/core/presentation/widgets/medium_space.dart';
import 'package:flutter_shopping/core/presentation/widgets/network_image_progressbar_widget.dart';
import 'package:flutter_shopping/core/style/app_theme.dart';
import 'package:flutter_shopping/core/utils/consts.dart';
import 'package:flutter_shopping/dependency_injection/injection.dart';
import 'package:flutter_shopping/features/shop_feature/data/models/comments_model.dart';
import 'package:flutter_shopping/features/shop_feature/data/models/products_model.dart';
import 'package:flutter_shopping/features/shop_feature/presentation/bloc/home_bloc/comments_status.dart';
import 'package:flutter_shopping/features/shop_feature/presentation/bloc/home_bloc/home_bloc.dart';
import 'package:flutter_shopping/features/shop_feature/presentation/bloc/home_bloc/products_status.dart';
import 'package:flutter_shopping/features/shop_feature/presentation/widgets/header_row_widget.dart';

@RoutePage()
class ProductPage extends StatefulWidget implements AutoRouteWrapper {
  final int id;
  const ProductPage({super.key, required this.id});

  @override
  State<ProductPage> createState() => _ProductPageState();

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

class _ProductPageState extends State<ProductPage> {
  int id = 0;
  @override
  void initState() {
    id = widget.id;
    loadAll();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(AssetsBase.favOutlineIcon, color: Theme.of(context).primaryColor),
          ),
        ],
      ),
      floatingActionButton: SizedBox(
        width: MediaQuery.of(context).size.width - (Dimensions.mainPaddingHorizontal * 2),
        child: FloatingActionButton.extended(
          onPressed: () {},
          label: const Text("افزودن به سبد خرید"),
          icon: const Icon(AssetsBase.addIcon),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: RefreshIndicator(
        onRefresh: () => loadAll(),
        child: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            if (state.productsStatusSort0 is ProductsLoading || state.commentsStatus is CommentsLoading) {
              return const Center(child: CircularProgressIndicator());
            }
            if (state.productsStatusSort0 is ProductsFail || state.commentsStatus is CommentsFail) {
              return BlocError(error: (state.commentsStatus as CommentsFail).error, onPress: () => loadAll());
            }
            if (state.productsStatusSort0 is ProductsSuccess && state.commentsStatus is CommentsSuccess) {
              ProductsItems productsItems = (state.productsStatusSort0 as ProductsSuccess).entity.items!.firstWhere((product) => product.id == id);
              List<CommentsItems> commentsItems = (state.commentsStatus as CommentsSuccess).entity.items!;
              int previousPrice = productsItems.price! + productsItems.discount!;

              return SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: Dimensions.mainPaddingHorizontal),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(Dimensions.borderRadius),
                        child: Image.network(
                          productsItems.image!,
                          fit: BoxFit.cover,
                          height: 250,
                          width: double.infinity,
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
                      ),
                      const MediumSpace(vertical: true),
                      SizedBox(
                        width: double.infinity,
                        child: Text(
                          productsItems.title!,
                          style: context.headline2Bold,
                          textAlign: TextAlign.right,
                          overflow: TextOverflow.fade,
                          maxLines: 2,
                        ),
                      ),
                      const BigSpace(vertical: true),
                      Text(
                        Consts.sampleDescription,
                        style: context.body2Medium.copyWith(height: 1.8),
                        textAlign: TextAlign.justify,
                      ),
                      const BigSpace(vertical: true),
                      SizedBox(
                        width: double.infinity,
                        child: Text(
                          "$previousPrice تومان",
                          style: context.body4Medium,
                          textAlign: TextAlign.right,
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: Text(
                          "${productsItems.price} تومان",
                          style: context.body1Bold.copyWith(color: Theme.of(context).primaryColor),
                          textAlign: TextAlign.right,
                        ),
                      ),
                      const MediumSpace(vertical: true),
                      HeaderRow(titleText: "${commentsItems.length} دیدگاه", buttonText: "+ افزودن نظر", buttonPress: () {}),
                      ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: commentsItems.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: Dimensions.mainPaddingHorizontal / 2, vertical: Dimensions.mediumSpace),
                            child: SizedBox(
                              //  color: Colors.red,
                              width: double.infinity,
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: Text(
                                          commentsItems[index].title!,
                                          style: context.body2Bold,
                                          overflow: TextOverflow.fade,
                                        ),
                                      ),
                                      Column(
                                        children: [
                                          Text(
                                            commentsItems[index].date!,
                                            style: context.body4Medium.copyWith(decoration: TextDecoration.none),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: double.infinity,
                                    child: Text(
                                      commentsItems[index].author!.email!,
                                      textAlign: TextAlign.left,
                                      style: context.body4Medium.copyWith(decoration: TextDecoration.none),
                                    ),
                                  ),
                                  const MediumSpace(vertical: true),
                                  SizedBox(
                                    width: double.infinity,
                                    child: Text(
                                      commentsItems[index].content!,
                                      style: context.body2Medium.copyWith(height: 1.8),
                                      textAlign: TextAlign.justify,
                                    ),
                                  ),
                                  const MediumSpace(vertical: true),
                                  const Divider(),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ],
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
    BlocProvider.of<HomeBloc>(context).add(LoadCommentsEvent(id: id));
  }
}
