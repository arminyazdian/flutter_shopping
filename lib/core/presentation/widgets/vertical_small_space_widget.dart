import 'package:flutter/material.dart';
import 'package:flutter_shopping/core/config/dimensions.dart';

class VerticalSmallSpace extends StatelessWidget {
  const VerticalSmallSpace({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(height: Dimensions.smallVerticalSpace);
  }
}
