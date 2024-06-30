import 'package:flutter/material.dart';
import 'package:flutter_shopping/core/config/dimensions.dart';
import 'package:flutter_shopping/core/style/app_theme.dart';

class DragIndicator extends StatelessWidget {
  const DragIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 40,
        height: 5,
        decoration: BoxDecoration(color: Theme.of(context).colorScheme.items, borderRadius: BorderRadius.circular(Dimensions.borderRadius)),
      ),
    );
  }
}
