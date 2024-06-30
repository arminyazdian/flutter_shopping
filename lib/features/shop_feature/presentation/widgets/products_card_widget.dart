import 'package:flutter/material.dart';
import 'package:flutter_shopping/core/config/dimensions.dart';
import 'package:flutter_shopping/core/presentation/widgets/network_image_progressbar_widget.dart';
import 'package:flutter_shopping/core/presentation/widgets/vertical_medium_space.dart';
import 'package:flutter_shopping/core/presentation/widgets/vertical_small_space_widget.dart';
import 'package:flutter_shopping/core/style/app_theme.dart';

class ProductsCard extends StatelessWidget {
  final String imagePath, productTitle;
  final int previousPrice, currentPrice;
  const ProductsCard({super.key, required this.imagePath, required this.productTitle, required this.previousPrice, required this.currentPrice});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
      child: SizedBox(
        width: 150,
        child: Column(
          children: [
            Stack(
              alignment: Alignment.topLeft,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(Dimensions.borderRadius),
                  child: Image.network(
                    imagePath,
                    fit: BoxFit.cover,
                    height: 200,
                    width: 150,
                    loadingBuilder: (context, child, loadingProgress) {
                      if (loadingProgress == null) return child;
                      return const NetworkImageProgressbar(height: 200, width: 150);
                    },
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.favorite_border_rounded,
                    size: 22,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ],
            ),
            const VerticalSmallSpace(),
            Text(
              productTitle,
              style: context.body2Bold,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            const VerticalMediumSpace(),
            SizedBox(
              width: 150,
              child: Text(
                "$previousPrice تومان",
                style: context.body4Medium.copyWith(decoration: TextDecoration.lineThrough),
              ),
            ),
            SizedBox(
              width: 150,
              child: Text(
                "$currentPrice تومان",
                style: context.body3Medium,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
