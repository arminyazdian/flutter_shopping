import 'package:flutter/material.dart';
import 'package:flutter_shopping/core/config/dimensions.dart';
import 'package:flutter_shopping/core/style/app_theme.dart';

class BottomSheetTile extends StatelessWidget {
  final String title;
  final bool sortState;
  final void Function() onTap;
  const BottomSheetTile({super.key, required this.title, required this.onTap, required this.sortState});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(Dimensions.borderRadius),
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(Dimensions.mainPaddingHorizontal),
        child: Text(title,
            style: context.body2Medium.copyWith(
              color: sortState ? Theme.of(context).primaryColor : context.body2Medium.color!,
            )),
      ),
    );
  }
}
