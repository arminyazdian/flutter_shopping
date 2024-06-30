import 'package:flutter/material.dart';
import 'package:flutter_shopping/core/config/dimensions.dart';
import 'package:flutter_shopping/core/presentation/widgets/medium_space.dart';
import 'package:flutter_shopping/core/presentation/widgets/network_image_progressbar_widget.dart';
import 'package:flutter_shopping/core/style/app_theme.dart';

class ProductsListItem extends StatelessWidget {
  final String imagePath, productTitle;
  final int previousPrice, currentPrice;
  final double _imageSize = 100;
  const ProductsListItem({super.key, required this.imagePath, required this.productTitle, required this.previousPrice, required this.currentPrice});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
      child: SizedBox(
        height: _imageSize,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(Dimensions.borderRadius),
              child: Image.network(
                imagePath,
                fit: BoxFit.cover,
                height: _imageSize,
                width: _imageSize,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    height: _imageSize,
                    width: _imageSize,
                    color: Theme.of(context).colorScheme.items,
                    child: const Center(child: Text("خطا در دریافت تصویر")),
                  );
                },
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) return child;
                  return NetworkImageProgressbar(height: _imageSize, width: _imageSize);
                },
              ),
            ),
            const MediumSpace(vertical: false),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      productTitle,
                      style: context.body2Bold.copyWith(height: 1.6),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Text(
                    "$previousPrice تومان",
                    style: context.body4Medium,
                  ),
                  Text(
                    "$currentPrice تومان",
                    style: context.body3Medium,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
