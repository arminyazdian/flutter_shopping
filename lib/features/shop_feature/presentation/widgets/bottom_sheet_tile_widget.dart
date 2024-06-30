import 'package:flutter/material.dart';
import 'package:flutter_shopping/core/config/dimensions.dart';
import 'package:flutter_shopping/core/style/app_theme.dart';

class BottomSheetTile extends StatelessWidget {
  final String title;
  const BottomSheetTile({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(Dimensions.borderRadius),
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.all(Dimensions.mainPaddingHorizontal),
        child: Text(title, style: context.body2Medium),
      ),
    );
  }
}
