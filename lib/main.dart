import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recipe/app/routes.dart';
import 'package:recipe/ui/views/onboarding/onboarding_view_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<OnBoardingViewModel>(create: (context) => OnBoardingViewModel())
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: Routes.generateRoute,
        initialRoute: RouteManager.splash,
        title: 'Recipe',

      ),
    );
  }
}
