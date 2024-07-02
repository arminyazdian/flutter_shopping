import 'package:flutter/material.dart';
import 'package:flutter_shopping/core/config/dimensions.dart';
import 'package:flutter_shopping/core/presentation/widgets/medium_space.dart';
import 'package:flutter_shopping/core/style/app_theme.dart';

class CommentItem extends StatelessWidget {
  final String title, date, email, content;
  const CommentItem({super.key, required this.title, required this.date, required this.email, required this.content});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Dimensions.mainPaddingHorizontal / 2, vertical: Dimensions.mediumSpace),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Text(
                    title,
                    style: context.body2Bold,
                    overflow: TextOverflow.fade,
                  ),
                ),
                Text(
                  date,
                  style: context.body4Medium.copyWith(decoration: TextDecoration.none),
                ),
              ],
            ),
            SizedBox(
              width: double.infinity,
              child: Text(
                email,
                textAlign: TextAlign.left,
                style: context.body4Medium.copyWith(decoration: TextDecoration.none),
              ),
            ),
            const MediumSpace(vertical: true),
            SizedBox(
              width: double.infinity,
              child: Text(
                content,
                style: context.body2Medium.copyWith(height: 1.8),
                textAlign: TextAlign.justify,
              ),
            ),
            const MediumSpace(vertical: true),
            const Divider(),
          ],
        ),
      ),
    );
  }
}
