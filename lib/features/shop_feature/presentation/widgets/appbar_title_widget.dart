import 'package:flutter/material.dart';
import 'package:flutter_shopping/core/config/assets.dart';
import 'package:flutter_shopping/core/config/dimensions.dart';
import 'package:flutter_shopping/core/presentation/widgets/big_space_widget.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppBarTitle extends StatelessWidget {
  final String text;
  const AppBarTitle({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            SvgPicture.asset(
              AssetsBase().mainLogo,
              width: Dimensions.appBarIconSize,
            ),
            const BigSpace(vertical: false),
            Text(text),
          ],
        ),
        SvgPicture.asset(
          AssetsBase().profile,
          width: Dimensions.appBarIconSize,
          // ignore: deprecated_member_use
          color: Theme.of(context).primaryColor,
        ),
      ],
    );
  }
}
