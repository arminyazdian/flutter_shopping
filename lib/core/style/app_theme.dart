import 'package:flutter/material.dart';
import 'package:flutter_shopping/core/config/assets.dart';
import 'package:flutter_shopping/core/style/app_color.dart';
import 'package:injectable/src/injectable_annotations.dart';

@injectable
class AppTheme {
  bool isDark = false;
  final AppColorsBase appColors;

  AppTheme({required this.appColors});

  ThemeData appThemeLight(BuildContext context) {
    final ThemeData defaultTheme = Theme.of(context).copyWith(brightness: Brightness.light);

    return ThemeData(
      brightness: Brightness.light,
      primaryColor: appColors.primary.light,
      scaffoldBackgroundColor: appColors.backgroundColor.light,
      backgroundColor: appColors.backgroundColor.light,
      fontFamily: AssetsBase.fontFamily,
      colorScheme: defaultTheme.colorScheme.copyWith(primary: appColors.primary.light, secondary: appColors.secondary.light),
      appBarTheme: AppBarTheme(backgroundColor: appColors.backgroundColor.light),
      iconButtonTheme: IconButtonThemeData(
        style: ButtonStyle(
          iconColor: MaterialStateProperty.all(appColors.titleTextColor.light),
          iconSize: const MaterialStatePropertyAll(28),
        ),
      ),
      progressIndicatorTheme: ProgressIndicatorThemeData(color: appColors.primary.light),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: appColors.primary.light,
        foregroundColor: appColors.backgroundColor.light,
      ),
      textTheme: Theme.of(context).textTheme.copyWith(
            headlineMedium: context.headline4Bold,
            headlineSmall: context.headline5Bold,
            titleLarge: context.title2Bold,
            bodyLarge: context.body1Medium,
            bodyMedium: context.body2Medium,
            titleMedium: context.body2Bold,
            titleSmall: context.body3Medium,
            labelLarge: context.body1Bold.copyWith(color: appColors.buttonTextColor.light),
            bodySmall: context.body4Medium,
          ),
    );
  }

  ThemeData appThemeDark(BuildContext context) {
    final ThemeData defaultTheme = Theme.of(context).copyWith(brightness: Brightness.dark);

    return ThemeData(
      brightness: Brightness.dark,
      primaryColor: appColors.primary.dark,
      scaffoldBackgroundColor: appColors.backgroundColor.dark,
      backgroundColor: appColors.backgroundColor.dark,
      fontFamily: AssetsBase.fontFamily,
      colorScheme: defaultTheme.colorScheme.copyWith(primary: appColors.primary.dark, secondary: appColors.secondary.dark),
      appBarTheme: AppBarTheme(backgroundColor: appColors.backgroundColor.dark),
      iconButtonTheme: IconButtonThemeData(
        style: ButtonStyle(
          iconColor: MaterialStateProperty.all(appColors.titleTextColor.dark),
          iconSize: const MaterialStatePropertyAll(28),
        ),
      ),
      progressIndicatorTheme: ProgressIndicatorThemeData(color: appColors.primary.dark),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: appColors.primary.dark,
        foregroundColor: appColors.backgroundColor.dark,
      ),
      textTheme: Theme.of(context).textTheme.copyWith(
            headlineMedium: context.headline4Bold,
            headlineSmall: context.headline5Bold,
            titleLarge: context.title2Bold,
            bodyLarge: context.body1Medium,
            bodyMedium: context.body2Medium,
            titleMedium: context.body2Bold,
            titleSmall: context.body3Medium,
            labelLarge: context.body1Bold.copyWith(color: appColors.buttonTextColor.dark),
            bodySmall: context.body4Medium,
          ),
    );
  }
}

extension TextThemeExtension on BuildContext {
  TextStyle get headline4Bold => TextStyle(color: Theme.of(this).colorScheme.titleText, fontWeight: FontWeight.w700, fontSize: 22);
  TextStyle get headline5Bold => TextStyle(color: Theme.of(this).colorScheme.titleText, fontWeight: FontWeight.w700, fontSize: 20);
  TextStyle get title2Bold => TextStyle(color: Theme.of(this).colorScheme.mainText, fontWeight: FontWeight.w700, fontSize: 17);
  TextStyle get body1Medium => TextStyle(color: Theme.of(this).colorScheme.subText, fontWeight: FontWeight.w500, fontSize: 16);
  TextStyle get body1Bold => TextStyle(color: Theme.of(this).colorScheme.subText, fontWeight: FontWeight.w700, fontSize: 16);
  TextStyle get body2Medium => TextStyle(color: Theme.of(this).colorScheme.subText, fontWeight: FontWeight.w500, fontSize: 15);
  TextStyle get body2Bold => TextStyle(color: Theme.of(this).colorScheme.mainText, fontWeight: FontWeight.w700, fontSize: 15);
  TextStyle get body3Medium => TextStyle(color: Theme.of(this).colorScheme.primary, fontWeight: FontWeight.w500, fontSize: 14);
  TextStyle get body4Medium => TextStyle(
      color: Theme.of(this).colorScheme.items,
      fontWeight: FontWeight.w500,
      fontSize: 13,
      decoration: TextDecoration.lineThrough,
      decorationColor: Theme.of(this).colorScheme.items);
}

extension ColorSchemeExtension on ColorScheme {
  static AppColorsBase appColors = AppColorsBase();
  Color get primary => brightness == Brightness.light ? appColors.primary.light : appColors.primary.dark;
  Color get secondary => brightness == Brightness.light ? appColors.secondary.light : appColors.secondary.dark;
  Color get mainBackground1 => brightness == Brightness.light ? appColors.backgroundColor.light : appColors.backgroundColor.dark;
  Color get items => brightness == Brightness.light ? appColors.items.light : appColors.items.dark;
  Color get mainText => brightness == Brightness.light ? appColors.mainTextColor.light : appColors.mainTextColor.dark;
  Color get subText => brightness == Brightness.light ? appColors.subTextColor.light : appColors.subTextColor.dark;
  Color get titleText => brightness == Brightness.light ? appColors.titleTextColor.light : appColors.titleTextColor.dark;
  Color get inputText => brightness == Brightness.light ? appColors.inputTextColor.light : appColors.inputTextColor.dark;
  Color get mainButtonText => brightness == Brightness.light ? appColors.buttonTextColor.light : appColors.buttonTextColor.dark;
}
