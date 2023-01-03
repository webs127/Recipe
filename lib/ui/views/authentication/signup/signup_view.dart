import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:recipe/app/routes.dart';
import 'package:recipe/core/constants/image_constants.dart';
import 'package:recipe/core/constants/text_constants.dart';
import 'package:recipe/core/managers/color_manager.dart';
import 'package:recipe/core/managers/style_manager.dart';
import 'package:recipe/ui/shared/recipe_spacing_widget.dart';
import 'package:recipe/ui/widgets/recipe_button_widget.dart';
import 'package:recipe/ui/widgets/recipe_checkbox_widget.dart';
import 'package:recipe/ui/widgets/recipe_text_widget.dart';
import 'package:recipe/ui/widgets/recipe_textfield_widget.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
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
      body: SingleChildScrollView(
        child: SizedBox(
            width: size.width,
            height: size.height,
            child: Column(
              children: [
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
                      RecipeTextWidget(
                        RecipeTextConstants.welcomeText,
                        textAlign: TextAlign.center,
                        textStyle: RecipeTextStyleManager.regularTextStyle(
                            color: RecipeColorManager.black, fontSize: 30),
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
                            labelText: "Display Name",
                            iconData: Icons.check_circle_outline,
                          ),
                          RecipeSpacer.mediumHeight(),
                          RecipeTextFieldWidget(
                            labelText: "Email Address",
                          ),
                          RecipeSpacer.mediumHeight(),
                          RecipeTextFieldWidget(
                            labelText: "Password",
                            iconData: Icons.remove_red_eye,
                            obscureText: true,
                          ),
                        ],
                      )),
                ),
                const RecipeSpacer.height(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Row(
                    children: [
                      const RecipeCheckBoxWidget(),
                      const RecipeSpacer.width(),
                      RichText(
                          text: TextSpan(
                              text: RecipeTextConstants.agree,
                              style: RecipeTextStyleManager.regularTextStyle(
                                  color: RecipeColorManager.black,
                                  fontSize: 17),
                              recognizer: TapGestureRecognizer()..onTap = () {},
                              children: [
                            TextSpan(
                              text: RecipeTextConstants.terms,
                              style: RecipeTextStyleManager.regularTextStyle(
                                  color: RecipeColorManager.splash,
                                  fontSize: 17),
                            ),
                            TextSpan(
                              text: RecipeTextConstants.and,
                              style: RecipeTextStyleManager.regularTextStyle(
                                  color: RecipeColorManager.black,
                                  fontSize: 17),
                            ),
                            TextSpan(
                              text: RecipeTextConstants.privacy,
                              recognizer: TapGestureRecognizer()..onTap = () {},
                              style: RecipeTextStyleManager.regularTextStyle(
                                  color: RecipeColorManager.splash,
                                  fontSize: 17),
                            )
                          ]))
                    ],
                  ),
                ),
                const RecipeSpacer.largeHeight(),
                RecipeButton(
                  onPresses: () {
                    Navigator.pushNamed(context, RouteManager.email);
                  },
                  addImage: false,
                  fillColor: RecipeColorManager.splash1,
                  textColor: RecipeColorManager.white,
                  text: RecipeTextConstants.createAccount,
                  borderColor: RecipeColorManager.splash,
                  imageUrl: RecipeImageConstants.googleLogo,
                ),
              ],
            )),
      ),
    );
  }
}
