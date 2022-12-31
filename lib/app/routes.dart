import 'package:flutter/material.dart';
import 'package:recipe/ui/views/splash/splash_view.dart';

class RouteManager {
  static const String splash = "/";
}

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch(settings.name) {
      case RouteManager.splash:
        return MaterialPageRoute(builder: (_) => const SplashView());
      default:
        return unDefined();
    }
  }
  static Route<dynamic> unDefined() => MaterialPageRoute(builder: (_) => const Scaffold(body: Center(child: Text("No Route!!!"),),));
}