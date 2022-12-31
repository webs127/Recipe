import 'package:flutter/material.dart';
import 'package:recipe/app/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: Routes.generateRoute,
      initialRoute: RouteManager.splash,
      title: 'Recipe',

    );
  }
}
