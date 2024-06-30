import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shopping/core/config/dimensions.dart';

class BannerSlide extends StatelessWidget {
  final int itemCount;
  final Widget Function(BuildContext context, int index, int realIndex) itemBuilder;
  const BannerSlide({super.key, required this.itemCount, required this.itemBuilder});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Dimensions.borderRadius),
      ),
      padding: const EdgeInsets.all(1),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(Dimensions.borderRadius - 1),
        child: CarouselSlider.builder(
          itemCount: itemCount,
          itemBuilder: itemBuilder,
          options: CarouselOptions(
            autoPlay: true,
            enableInfiniteScroll: true,
            autoPlayInterval: const Duration(seconds: 4),
            viewportFraction: 1,
          ),
        ),
      ),
    );
  }
}
