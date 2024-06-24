import 'package:flutter/material.dart';
import 'package:flutter_shopping/core/presentation/routes/app_router.dart';
import 'package:flutter_shopping/core/style/app_theme.dart';

class App extends StatelessWidget {
  final AppRouter router;
  final AppTheme theme;
  const App({super.key, required this.router, required this.theme});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerDelegate: router.delegate(),
      routeInformationProvider: router.routeInfoProvider(),
      routeInformationParser: router.defaultRouteParser(),
      theme: theme.appThemeLight(context),
      darkTheme: theme.appThemeDark(context),
    );
  }
}
