import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:recipe/app/routes.dart';
import 'package:recipe/core/constants/image_constants.dart';
import 'package:recipe/core/constants/text_constants.dart';
import 'package:recipe/core/managers/color_manager.dart';
import 'package:recipe/core/managers/style_manager.dart';
import 'package:recipe/ui/shared/recipe_spacing_widget.dart';
import 'package:recipe/ui/widgets/recipe_button_widget.dart';
import 'package:recipe/ui/widgets/recipe_divider_widget.dart';
import 'package:recipe/ui/widgets/recipe_text_widget.dart';

class AuthenticationLandingView extends StatefulWidget {
  const AuthenticationLandingView({Key? key}) : super(key: key);

  @override
  State<AuthenticationLandingView> createState() =>
      _AuthenticationLandingViewState();
}

class _AuthenticationLandingViewState extends State<AuthenticationLandingView> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: size.width,
          height: size.height,
          child: Column(
            children: [
              const RecipeSpacer.largeHeight(),
              SizedBox(
                width: 285,
                height: 178,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Image(
                        image:
                            AssetImage(RecipeImageConstants.logoHeaderBlack)),
                    const RecipeSpacer.height(),
                    RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                            text: RecipeTextConstants.join,
                            style: RecipeTextStyleManager.mediumTextStyle(
                                color: Colors.black, fontSize: 30),
                            children: [
                              TextSpan(
                                text: RecipeTextConstants.professional,
                                style: RecipeTextStyleManager.mediumTextStyle(
                                    color: Colors.red, fontSize: 30),
                              )
                            ]))
                  ],
                ),
              ),
              const RecipeSpacer.largeHeight(),
              RecipeButton(
                onPresses: () {
                  Navigator.pushNamed(context, RouteManager.signUp);
                },
                textColor: RecipeColorManager.black,
                text: RecipeTextConstants.email,
                borderColor: RecipeColorManager.black,
                imageUrl: RecipeImageConstants.emailLogo,
              ),
              const RecipeSpacer.largeHeight(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                        child: RecipeDividerWidget(
                      color: RecipeColorManager.grey,
                      thickness: 1.5,
                    )),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      child: RecipeTextWidget(RecipeTextConstants.or),
                    ),
                    Expanded(
                        child: RecipeDividerWidget(
                      color: RecipeColorManager.grey,
                      thickness: 1.5,
                    )),
                  ],
                ),
              ),
              const RecipeSpacer.largeHeight(),
              RecipeButton(
                onPresses: () {},
                textColor: RecipeColorManager.black,
                text: RecipeTextConstants.google,
                borderColor: RecipeColorManager.black,
                imageUrl: RecipeImageConstants.googleLogo,
              ),
              const RecipeSpacer.mediumHeight(),
              RecipeButton(
                onPresses: () {},
                textColor: Colors.white,
                text: RecipeTextConstants.facebook,
                borderColor: RecipeColorManager.blue,
                imageUrl: RecipeImageConstants.facebookLogo,
                fillColor: RecipeColorManager.blue,
              ),
              const RecipeSpacer.mediumHeight(),
              RecipeButton(
                onPresses: () {},
                textColor: Colors.white,
                text: RecipeTextConstants.apple,
                borderColor: RecipeColorManager.black,
                imageUrl: RecipeImageConstants.appleLogo,
                fillColor: RecipeColorManager.black,
              ),
              const RecipeSpacer.mediumHeight(),
              RecipeButton(
                onPresses: () {},
                textColor: Colors.white,
                text: RecipeTextConstants.guest,
                borderColor: RecipeColorManager.splash,
                fillColor: RecipeColorManager.splash,
                imageUrl: RecipeImageConstants.guestLogo,
              ),
              const RecipeSpacer.mediumHeight(),
              RichText(
                  text: TextSpan(
                      text: RecipeTextConstants.alreadyHaveAnAccount,
                      style: RecipeTextStyleManager.semiBoldTextStyle(
                          color: Colors.black, fontSize: 17),
                      children: [
                    TextSpan(
                      text: RecipeTextConstants.login,
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.pushNamed(context, RouteManager.signIn);
                        },
                      style: RecipeTextStyleManager.semiBoldTextStyle(
                          color: RecipeColorManager.splash, fontSize: 17),
                    )
                  ]))
            ],
          ),
        ),
      ),
    );
  }
}
