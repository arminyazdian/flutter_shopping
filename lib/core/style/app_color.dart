import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

class AppColor {
  final Color light, dark;
  const AppColor({required this.light, required this.dark});
}

class AppColorsBase {
  //Main
  AppColor get backgroundColor => const AppColor(light: Color(0xffFFFFFF), dark: Color(0xff272727));
  AppColor get primary => const AppColor(light: Color(0xff14a5d4), dark: Color(0xff14a5d4));
  AppColor get secondary => const AppColor(light: Color(0xff08bda5), dark: Color(0xff08bda5));

  //Text
  AppColor get mainTextColor => const AppColor(light: Color(0xff2d2d2d), dark: Color(0xffd4d4d4));
  AppColor get subTextColor => const AppColor(light: Color(0xff505050), dark: Color(0xff606060));
  AppColor get titleTextColor => const AppColor(light: Color(0xff232323), dark: Color(0xffe6e6e6));
  AppColor get inputTextColor => const AppColor(light: Color(0xff232323), dark: Color(0xffe6e6e6));
  AppColor get buttonTextColor => const AppColor(light: Color(0xffe6e6e6), dark: Color(0xff232323));
}
