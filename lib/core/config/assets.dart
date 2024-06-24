import 'package:flutter/material.dart';
import 'package:flutter_shopping/core/presentation/routes/app_router.dart';
import 'package:flutter_shopping/dependency_injection/injection.dart';

class AssetsBase {
  static const String fontFamily = "Yekan";

  bool isLight = Theme.of(inject<AppRouter>().navigatorKey.currentContext!).colorScheme.brightness == Brightness.light;

  //Icons path
  String get mainLogo => isLight ? "assets/icons/nike_logo_light.svg" : "assets/icons/nike_logo_dark.svg";
  String get profile => "assets/icons/profile_light_dark.svg";
}
