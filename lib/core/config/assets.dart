import 'package:flutter/material.dart';
import 'package:flutter_shopping/core/presentation/routes/app_router.dart';
import 'package:flutter_shopping/dependency_injection/injection.dart';

class AssetsBase {
  static const String fontFamily = "Yekan";

  bool isLight = Theme.of(inject<AppRouter>().navigatorKey.currentContext!).colorScheme.brightness == Brightness.light;

  //Icons path
  String get mainLogo => isLight ? "assets/icons/nike_logo_light.svg" : "assets/icons/nike_logo_dark.svg";
  String get profile => "assets/icons/profile_light_dark.svg";

  //Built-in Icons
  static const IconData sortIcon = Icons.sort_rounded;
  static const IconData homeIcon = Icons.home_rounded;
  static const IconData shoppingIcon = Icons.shopping_cart_rounded;
  static const IconData settingsIcon = Icons.settings_rounded;
  static const IconData favFilledIcon = Icons.favorite_rounded;
  static const IconData favOutlineIcon = Icons.favorite_outline_rounded;
  static const IconData searchIcon = Icons.search_rounded;
  static const IconData closeIcon = Icons.close_rounded;
  static const IconData addIcon = Icons.add_rounded;
}
