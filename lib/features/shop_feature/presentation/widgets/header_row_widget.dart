import 'package:flutter/material.dart';
import 'package:flutter_shopping/core/style/app_theme.dart';

class HeaderRow extends StatelessWidget {
  final String titleText, buttonText;
  const HeaderRow({super.key, required this.titleText, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(titleText, style: context.body2Medium),
        TextButton(
          onPressed: () {},
          child: Text(buttonText, style: context.body2Medium.copyWith(color: Theme.of(context).primaryColor)),
        ),
      ],
    );
  }
}
