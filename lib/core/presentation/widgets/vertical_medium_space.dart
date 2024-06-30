import 'package:flutter/material.dart';
import 'package:flutter_shopping/core/config/dimensions.dart';

class VerticalMediumSpace extends StatelessWidget {
  const VerticalMediumSpace({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(height: Dimensions.mediumVerticalSpace);
  }
}