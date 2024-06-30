import 'package:flutter/material.dart';

class NetworkImageProgressbar extends StatelessWidget {
  final double height, width;
  const NetworkImageProgressbar({super.key, required this.height, required this.width});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: LinearProgressIndicator(
        color: Theme.of(context).colorScheme.primary.withOpacity(0.2),
        backgroundColor: Theme.of(context).colorScheme.secondary.withOpacity(0.2),
      ),
    );
  }
}
