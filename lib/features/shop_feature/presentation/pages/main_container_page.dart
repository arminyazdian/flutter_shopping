import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_shopping/core/config/assets.dart';
import 'package:flutter_shopping/dependency_injection/injection.dart';
import 'package:flutter_shopping/features/shop_feature/presentation/bloc/home_bloc/home_bloc.dart';
import 'package:flutter_shopping/features/shop_feature/presentation/pages/cart_page.dart';
import 'package:flutter_shopping/features/shop_feature/presentation/pages/favourite_page.dart';
import 'package:flutter_shopping/features/shop_feature/presentation/pages/home_page.dart';
import 'package:flutter_shopping/features/shop_feature/presentation/pages/settings_page.dart';

@RoutePage()
class MainContainerPage extends StatefulWidget implements AutoRouteWrapper {
  const MainContainerPage({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: this,
    );
  }

  @override
  State<MainContainerPage> createState() => _MainContainerPageState();
}

class _MainContainerPageState extends State<MainContainerPage> {
  final PageController pageController = PageController(initialPage: 0);
  int currentPage = 0;

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPage,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(AssetsBase.homeIcon), label: "خانه"),
          BottomNavigationBarItem(icon: Icon(AssetsBase.shoppingIcon), label: "سبد خرید"),
          BottomNavigationBarItem(icon: Icon(AssetsBase.favFilledIcon), label: "علاقه مندی ها"),
          BottomNavigationBarItem(icon: Icon(AssetsBase.settingsIcon), label: "تنظیمات"),
        ],
        onTap: (value) {
          pageController.jumpToPage(value);
        },
      ),
      body: PageView(
        controller: pageController,
        onPageChanged: (value) {
          setState(() {
            currentPage = value;
          });
        },
        children: [
          BlocProvider(
            create: (context) => inject<HomeBloc>(),
            child: HomePage(),
          ),
          CartPage(),
          FavouritePage(),
          SettingsPage(),
        ],
      ),
    );
  }
}
