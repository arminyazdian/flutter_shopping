import 'package:flutter/material.dart';
import 'package:flutter_shopping/core/config/dimensions.dart';

class SmallSpace extends StatelessWidget {
  final bool vertical;
  const SmallSpace({super.key, required this.vertical});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: vertical ? Dimensions.smallSpace : null,
      width: vertical ? null : Dimensions.smallSpace,
    );
  }
}
