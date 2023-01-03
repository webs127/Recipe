import 'package:flutter/material.dart';
import 'package:recipe/ui/views/authentication/account/account_set_up.dart';
import 'package:recipe/ui/views/authentication/authentication_landing_view.dart';
import 'package:recipe/ui/views/authentication/forgotpassword/forgot_password_view.dart';
import 'package:recipe/ui/views/authentication/resetpassword/reset_password_view.dart';
import 'package:recipe/ui/views/authentication/signin/signin_view.dart';
import 'package:recipe/ui/views/authentication/signup/signup_view.dart';
import 'package:recipe/ui/views/authentication/verification/email_verification.dart';
import 'package:recipe/ui/views/home/home_view.dart';
import 'package:recipe/ui/views/onboarding/onboarding_view.dart';
import 'package:recipe/ui/views/splash/splash_view.dart';

class RouteManager {
  static const String splash = "/";
  static const String onboarding = "/onboarding";
  static const String authentication = "/authentication";
  static const String home = "/home";
  static const String signUp = "/authentication/signUp";
  static const String signIn = "/authentication/signIn";
  static const String forgotPassword = "/authentication/forgotPassword";
  static const String resetPassword = "/authentication/resetPassword";
  static const String email = "/authentication/email";
  static const String accountSetUp = "/authentication/account_setup";

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
      case RouteManager.signUp:
        return MaterialPageRoute(builder: (_) => const SignUpView());
       case RouteManager.signIn:
         return MaterialPageRoute(builder: (_) => const SignInView());
      case RouteManager.email:
        return MaterialPageRoute(builder: (_) => const EmailVerificationView());
      case RouteManager.forgotPassword:
         return MaterialPageRoute(builder: (_) => const ForgotPasswordView());
       case RouteManager.resetPassword:
         return MaterialPageRoute(builder: (_) => const ResetPasswordView());
      case RouteManager.accountSetUp:
        return MaterialPageRoute(builder: (_) => const AccountSetUpView());
      case RouteManager.home:
        return MaterialPageRoute(builder: (_) => const HomeView());
      default:
        return unDefined();
    }
  }
  static Route<dynamic> unDefined() => MaterialPageRoute(builder: (_) => const Scaffold(body: Center(child: Text("No Route!!!"),),));
}