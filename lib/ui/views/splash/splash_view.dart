import 'package:flutter/material.dart';
import 'package:recipe/app/routes.dart';
import 'package:recipe/core/constants/image_constants.dart';
import 'package:recipe/core/managers/color_manager.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  void nextPage() => Future.delayed(const Duration(seconds: 3), () => Navigator.pushReplacementNamed(context, RouteManager.onboarding));
  @override
  void initState() {
    super.initState();
    nextPage();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: RecipeColorManager.splash,
      body: const Center(
        child: Image(
          image: AssetImage(
            RecipeImageConstants.logo
          ),
        ),
      ),
    );
  }
}
