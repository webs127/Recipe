import 'package:flutter/material.dart';
import 'package:recipe/ui/views/authentication/authentication_landing_view.dart';
import 'package:recipe/ui/views/onboarding/onboarding_view.dart';
import 'package:recipe/ui/views/splash/splash_view.dart';

class RouteManager {
  static const String splash = "/";
  static const String onboarding = "/onboarding";
  static const String authentication = "/authentication";
}

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch(settings.name) {
      case RouteManager.splash:
        return MaterialPageRoute(builder: (_) => const SplashView());
      case RouteManager.onboarding:
        return MaterialPageRoute(builder: (_) => const OnBoardingView());
      case RouteManager.authentication:
        return MaterialPageRoute(builder: (_) => const AuthenticationLandingView());
      default:
        return unDefined();
    }
  }
  static Route<dynamic> unDefined() => MaterialPageRoute(builder: (_) => const Scaffold(body: Center(child: Text("No Route!!!"),),));
}