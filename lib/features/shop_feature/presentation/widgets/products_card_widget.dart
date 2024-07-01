import 'package:flutter/material.dart';
import 'package:flutter_shopping/core/config/assets.dart';
import 'package:flutter_shopping/core/config/dimensions.dart';
import 'package:flutter_shopping/core/presentation/widgets/network_image_progressbar_widget.dart';
import 'package:flutter_shopping/core/presentation/widgets/medium_space.dart';
import 'package:flutter_shopping/core/presentation/widgets/small_space_widget.dart';
import 'package:flutter_shopping/core/style/app_theme.dart';

class ProductsCard extends StatelessWidget {
  final String imagePath, productTitle;
  final int previousPrice, currentPrice;
  final Function() onTap;
  const ProductsCard({super.key, required this.imagePath, required this.productTitle, required this.previousPrice, required this.currentPrice, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(Dimensions.borderRadius),
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
                      errorBuilder: (context, error, stackTrace) {
                        return Container(
                          height: 200,
                          width: 150,
                          color: Theme.of(context).colorScheme.items,
                          child: const Center(child: Text("خطا در دریافت تصویر")),
                        );
                      },
                      loadingBuilder: (context, child, loadingProgress) {
                        if (loadingProgress == null) return child;
                        return const NetworkImageProgressbar(height: 200, width: 150);
                      },
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      AssetsBase.favOutlineIcon,
                      size: 22,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ],
              ),
              const SmallSpace(vertical: true),
              Text(
                productTitle,
                style: context.body2Bold,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              const MediumSpace(vertical: true),
              SizedBox(
                width: 150,
                child: Text(
                  "$previousPrice تومان",
                  style: context.body4Medium,
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
      ),
    );
  }
}
