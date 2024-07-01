import 'package:flutter/material.dart';
import 'package:flutter_shopping/core/presentation/widgets/medium_space.dart';
import 'package:flutter_shopping/core/style/app_theme.dart';

class BlocError extends StatelessWidget {
  final String error;
  final void Function() onPress;
  const BlocError({super.key, required this.error, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(error, style: context.body1Bold),
          const MediumSpace(vertical: true),
          FilledButton(
            onPressed: onPress,
            child: const Text("بارگذاری مجدد"),
          ),
        ],
      ),
    );
  }
}
