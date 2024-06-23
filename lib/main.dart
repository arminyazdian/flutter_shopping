import 'package:flutter/material.dart';
import 'package:flutter_shopping/core/style/app_theme.dart';
import 'package:flutter_shopping/dependency_injection/injection.dart';

void main() {
  runApp(const MainApp());
  configureDependencies();
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: inject<AppTheme>().appThemeLight(context),
      home: Scaffold(
        body: Center(
          child: Text('Hello world!'),
        ),
      ),
    );
  }
}
