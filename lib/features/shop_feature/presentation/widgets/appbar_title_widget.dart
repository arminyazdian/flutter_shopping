import 'package:flutter/material.dart';
import 'package:flutter_shopping/core/config/assets.dart';
import 'package:flutter_shopping/core/config/dimensions.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppBarTitle extends StatelessWidget {
  const AppBarTitle({super.key});

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
            const SizedBox(width: 20),
            const Text("نایک مارکت"),
          ],
        ),
        SvgPicture.asset(
          AssetsBase().profile,
          width: Dimensions.appBarIconSize,
          color: Theme.of(context).primaryColor,
        ),
      ],
    );
  }
}
