import 'package:flutter/material.dart';
import 'package:flutter_shopping/core/config/dimensions.dart';

class VerticalBigSpace extends StatelessWidget {
  const VerticalBigSpace({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(height: Dimensions.bigVerticalSpace);
  }
}
