import 'package:flutter/material.dart';
import 'package:flutter_shopping/core/config/dimensions.dart';
import 'package:flutter_shopping/core/presentation/widgets/big_space_widget.dart';
import 'package:flutter_shopping/core/presentation/widgets/medium_space.dart';
import 'package:flutter_shopping/core/presentation/widgets/network_image_progressbar_widget.dart';
import 'package:flutter_shopping/core/style/app_theme.dart';
import 'package:flutter_shopping/core/utils/consts.dart';

class ProductFull extends StatelessWidget {
  final String imagePath, title;
  final int previousPrice, price;
  const ProductFull({super.key, required this.imagePath, required this.title, required this.previousPrice, required this.price});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(Dimensions.borderRadius),
          child: Image.network(
            imagePath,
            fit: BoxFit.cover,
            height: 250,
            width: double.infinity,
            errorBuilder: (context, error, stackTrace) {
              return Container(
                color: Theme.of(context).colorScheme.items,
                height: 500,
                width: double.infinity,
                child: const Center(
                  child: Text("خطا در دریافت تصویر"),
                ),
              );
            },
            loadingBuilder: (context, child, loadingProgress) {
              if (loadingProgress == null) return child;
              return const NetworkImageProgressbar(height: 500, width: double.infinity);
            },
          ),
        ),
        const MediumSpace(vertical: true),
        SizedBox(
          width: double.infinity,
          child: Text(
            title,
            style: context.headline2Bold,
            textAlign: TextAlign.right,
            overflow: TextOverflow.fade,
            maxLines: 2,
          ),
        ),
        const BigSpace(vertical: true),
        Text(
          Consts.sampleDescription,
          style: context.body2Medium.copyWith(height: 1.8),
          textAlign: TextAlign.justify,
        ),
        const BigSpace(vertical: true),
        SizedBox(
          width: double.infinity,
          child: Text(
            "$previousPrice تومان",
            style: context.body4Medium,
            textAlign: TextAlign.right,
          ),
        ),
        SizedBox(
          width: double.infinity,
          child: Text(
            "$price تومان",
            style: context.body1Bold.copyWith(color: Theme.of(context).primaryColor),
            textAlign: TextAlign.right,
          ),
        ),
        const MediumSpace(vertical: true),
      ],
    );
  }
}
