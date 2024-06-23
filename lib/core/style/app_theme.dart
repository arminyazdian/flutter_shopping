import 'package:flutter/material.dart';
import 'package:flutter_shopping/core/style/app_color.dart';
import 'package:injectable/src/injectable_annotations.dart';

@injectable
class AppTheme {
  bool isDark = false;
  final AppColorsBase appColors;

  AppTheme({required this.appColors});

  appthemeLight(BuildContext context) {
    final ThemeData defaultTheme = Theme.of(context).copyWith(brightness: Brightness.light);

    final ThemeData theme = ThemeData(
      brightness: Brightness.light,
      primaryColor: appColors.primary.light,
      scaffoldBackgroundColor: appColors.backgroundColor.light,
      backgroundColor: appColors.backgroundColor.light,
    );
  }
}
