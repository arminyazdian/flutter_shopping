import 'package:flutter/material.dart';
import 'package:flutter_shopping/core/config/dimensions.dart';

class BigSpace extends StatelessWidget {
  final bool vertical;
  const BigSpace({super.key, required this.vertical});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: vertical ? Dimensions.bigSpace : null,
      width: vertical ? null : Dimensions.bigSpace,
    );
  }
}
