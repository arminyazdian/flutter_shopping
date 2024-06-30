import 'package:flutter/material.dart';
import 'package:flutter_shopping/core/config/dimensions.dart';

class MediumSpace extends StatelessWidget {
  final bool vertical;
  const MediumSpace({super.key, required this.vertical});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: vertical ? Dimensions.mediumSpace : null,
      width: vertical ? null : Dimensions.mediumSpace,
    );
  }
}
