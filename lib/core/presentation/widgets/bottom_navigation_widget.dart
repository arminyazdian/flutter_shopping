import 'package:flutter/material.dart';
import 'package:flutter_shopping/core/config/assets.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: 0,
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(icon: Icon(AssetsBase.homeIcon), label: "خانه"),
        BottomNavigationBarItem(icon: Icon(AssetsBase.shoppingIcon), label: "سبد خرید"),
        BottomNavigationBarItem(icon: Icon(AssetsBase.favFilledIcon), label: "علاقه مندی ها"),
        BottomNavigationBarItem(icon: Icon(AssetsBase.settingsIcon), label: "تنظیمات"),
      ],
      onTap: (value) {},
    );
  }
}
