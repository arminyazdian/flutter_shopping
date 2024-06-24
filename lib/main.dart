import 'package:flutter/material.dart';
import 'package:flutter_shopping/core/presentation/app.dart';
import 'package:flutter_shopping/dependency_injection/injection.dart';

void main() {
  configureDependencies();
  runApp(App(router: inject(), theme: inject()));
}
