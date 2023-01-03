import 'package:flutter/material.dart';
import 'package:recipe/core/constants/image_constants.dart';

class AccountSetUpViewModel with ChangeNotifier {
  final List _imagesWithNoBackgroundPicture = [
    RecipeImageConstants.diary,
    RecipeImageConstants.wheat,
    RecipeImageConstants.nuts,
    RecipeImageConstants.soy,
    RecipeImageConstants.gluten,
    RecipeImageConstants.eggs,
  ];

  int get length => _imagesWithBackgroundPicture.length;

  final List _imagesWithBackgroundPicture = [
    RecipeImageConstants.diaryImage,
    RecipeImageConstants.wheatImage,
    RecipeImageConstants.nutsImage,
    RecipeImageConstants.soyImage,
    RecipeImageConstants.glutenImage,
    RecipeImageConstants.eggsImage,
  ];

  String imageNoBackgroundPicture(int i) => _imagesWithNoBackgroundPicture[i];
  String imageBackgroundPicture(int i) => _imagesWithBackgroundPicture[i];

  final PageController _pageController = PageController();

  PageController get pageController => _pageController;

  int _counter = 0;

  int get counter => _counter;

  void currentPage(int val) {
    _counter = val;
    notifyListeners();
  }

  void nextPage() {
    _pageController.nextPage(
        duration: const Duration(milliseconds: 500), curve: Curves.easeInCubic);
    notifyListeners();
  }
}
