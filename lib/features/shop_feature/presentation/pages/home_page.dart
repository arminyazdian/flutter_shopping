import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shopping/core/config/dimensions.dart';
import 'package:flutter_shopping/features/shop_feature/presentation/widgets/appbar_title_widget.dart';

@RoutePage()
class HomePage extends StatelessWidget implements AutoRouteWrapper {
  const HomePage({super.key});
  @override
  Widget wrappedRoute(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppBarTitle(),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: Dimensions.mainPaddingHorizontal, vertical: Dimensions.mainPaddingVertical),
        child: Column(
          children: [
            TextField(
              maxLines: 1,
              decoration: InputDecoration(
                hintText: "جستجو...",
                prefixIcon: Icon(Icons.search_rounded),
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.all(Dimensions.textFieldPadding),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
