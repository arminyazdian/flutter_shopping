import 'package:flutter/material.dart';
import 'package:flutter_shopping/core/style/app_theme.dart';

class HeaderRow extends StatelessWidget {
  final String titleText, buttonText;
  final void Function() buttonPress;
  const HeaderRow({super.key, required this.titleText, required this.buttonText, required this.buttonPress});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(titleText, style: context.body2Bold),
        TextButton(
          onPressed: buttonPress,
          child: Text(buttonText, style: context.body2Bold.copyWith(color: Theme.of(context).primaryColor)),
        ),
      ],
    );
  }
}
