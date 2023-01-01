import 'package:flutter/material.dart';
import 'package:recipe/core/constants/image_constants.dart';
import 'package:recipe/core/constants/text_constants.dart';

class OnBoardingViewModel with ChangeNotifier {
  final _images = [
    RecipeImageConstants.onboardingImage_1,
    RecipeImageConstants.onboardingImage_2,
    RecipeImageConstants.onboardingImage_3,
  ];

  final _headerTexts = [
    RecipeTextConstants.header1,
    RecipeTextConstants.header2,
    RecipeTextConstants.header3,
  ];

  final _subTexts = [
    RecipeTextConstants.subHeader1,
    RecipeTextConstants.subHeader2,
    RecipeTextConstants.subHeader3,
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

  String headerTextProvider(int index) {
    return _headerTexts[index];
  }

  String subHeaderTextProvider(int index) {
    return _subTexts[index];
  }

  final PageController _pageController = PageController();

  PageController get pageController => _pageController;

  void nextPage() {
    _pageController.nextPage(
        duration: const Duration(milliseconds: 500), curve: Curves.easeInCubic);
    notifyListeners();
  }
}
