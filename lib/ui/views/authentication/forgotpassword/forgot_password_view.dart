import 'package:flutter/material.dart';
import 'package:recipe/core/constants/image_constants.dart';
import 'package:recipe/core/constants/text_constants.dart';
import 'package:recipe/core/managers/color_manager.dart';
import 'package:recipe/core/managers/style_manager.dart';
import 'package:recipe/ui/shared/recipe_spacing_widget.dart';
import 'package:recipe/ui/widgets/recipe_button_widget.dart';
import 'package:recipe/ui/widgets/recipe_text_widget.dart';
import 'package:recipe/ui/widgets/recipe_textfield_widget.dart';
import 'package:recipe/app/routes.dart';

class ForgotPasswordView extends StatefulWidget {
  const ForgotPasswordView({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordView> createState() => _ForgotPasswordViewState();
}

class _ForgotPasswordViewState extends State<ForgotPasswordView> {
  final key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: RecipeColorManager.black),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: Column(
          children: [
            SizedBox(
              width: 285,
              height: 198,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Image(
                      image:
                      AssetImage(RecipeImageConstants.logoHeaderBlack)),
                  const RecipeSpacer.height(),
                  RecipeTextWidget(
                    RecipeTextConstants.forgotPassword,
                    textAlign: TextAlign.center,
                    textStyle: RecipeTextStyleManager.mediumTextStyle(
                        color: RecipeColorManager.black, fontSize: 30),
                  ),
                  RecipeTextWidget(
                    RecipeTextConstants.provide,
                    textAlign: TextAlign.center,
                    textStyle: RecipeTextStyleManager.regularTextStyle(
                        color: RecipeColorManager.grey, fontSize: 16),
                  )
                ],
              ),
            ),
            const RecipeSpacer.largeHeight(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Form(
                  key: key,
                  child: Column(
                    children: const [
                      RecipeTextFieldWidget(
                        labelText: "Email address",
                      ),
                      RecipeSpacer.mediumHeight(),
                    ],
                  )),
            ),
            const RecipeSpacer.largeHeight(),
            RecipeButton(
              onPresses: () {
                Navigator.pushNamed(context, RouteManager.resetPassword);
              },
              addImage: false,
              fillColor: RecipeColorManager.splash1,
              textColor: RecipeColorManager.white,
              text: RecipeTextConstants.submit,
              borderColor: RecipeColorManager.splash,
              imageUrl: RecipeImageConstants.googleLogo,
            ),

          ],
        ),
      ),
    );
  }
}
