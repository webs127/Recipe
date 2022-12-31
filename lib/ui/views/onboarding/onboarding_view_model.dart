import 'package:flutter/material.dart';
import 'package:recipe/core/constants/image_constants.dart';

class OnBoardingViewModel with ChangeNotifier {
  final _images = [
    RecipeImageConstants.onboardingImage_1,
    RecipeImageConstants.onboardingImage_2,
    RecipeImageConstants.onboardingImage_3,
  ];
  int _counter = 0;

  int get counter => _counter;

  void currentPage(int val) {
    _counter = val;
    notifyListeners();
  }
  int get length => _images.length;
  String imageProvider(int index) {
    return _images[index];
  }

  final PageController _pageController = PageController();

  PageController get pageController => _pageController;

  void nextPage() {
    _pageController.nextPage(duration: const Duration(milliseconds: 500), curve: Curves.easeInCubic);
    notifyListeners();
  }
}