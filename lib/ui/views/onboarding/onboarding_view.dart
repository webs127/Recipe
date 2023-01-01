import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recipe/core/constants/image_constants.dart';
import 'package:recipe/core/managers/color_manager.dart';
import 'package:recipe/core/managers/style_manager.dart';
import 'package:recipe/ui/shared/recipe_spacing_widget.dart';
import 'package:recipe/ui/views/onboarding/onboarding_view_model.dart';
import 'package:recipe/ui/widgets/recipe_text_widget.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({Key? key}) : super(key: key);

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  @override
  Widget build(BuildContext context) {
    var data = Provider.of<OnBoardingViewModel>(context);
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      bottom: false,
      child: Scaffold(
        body: PageView.builder(
            onPageChanged: data.currentPage,
            controller: data.pageController,
            itemCount: data.length,
            itemBuilder: (context, i) {
              return SizedBox(
                width: size.width,
                height: size.height,
                child: Column(
                  children: [
                    SizedBox(
                        width: size.width,
                        height: size.height / 2,
                        child: Image(
                            fit: BoxFit.fill,
                            image: AssetImage(data.imageProvider(i)))),
                    SizedBox(
                      width: size.width,
                      height: size.height / 2 - 42,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 14.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const RecipeSpacer.largeHeight(),
                            RecipeTextWidget(
                              data.headerTextProvider(i),
                              textAlign: TextAlign.start,
                              textStyle:
                                  RecipeTextStyleManager.regularTextStyle(
                                      color: RecipeColorManager.grey,
                                      fontSize: 18),
                            ),
                            const RecipeSpacer.height(),
                            RecipeTextWidget(
                              data.subHeaderTextProvider(i),
                              textStyle: RecipeTextStyleManager.mediumTextStyle(
                                color: RecipeColorManager.black,
                                fontSize: 28,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }),
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(left: 38.0, bottom: 40, right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: List.generate(
                    3,
                    (index) => Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Container(
                            width: 10,
                            height: 10,
                            decoration: BoxDecoration(
                                color: (data.counter == index)
                                    ? RecipeColorManager.splash
                                    : Colors.grey,
                                borderRadius: BorderRadius.circular(100)),
                          ),
                        )),
              ),
              (data.counter == 2) ? InkWell(
                onTap: () {},
                child: const Image(image: AssetImage(RecipeImageConstants.getStartedButton)),
              ) : FloatingActionButton(
                backgroundColor: Colors.white,
                heroTag: null,
                onPressed: () {
                  data.nextPage();
                },
                child: const Image(
                    image: AssetImage( RecipeImageConstants.onboardingNextButton)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
