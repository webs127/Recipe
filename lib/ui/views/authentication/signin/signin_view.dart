import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:recipe/app/routes.dart';
import 'package:recipe/core/constants/image_constants.dart';
import 'package:recipe/core/constants/text_constants.dart';
import 'package:recipe/core/managers/color_manager.dart';
import 'package:recipe/core/managers/style_manager.dart';
import 'package:recipe/ui/shared/recipe_spacing_widget.dart';
import 'package:recipe/ui/widgets/recipe_button_widget.dart';
import 'package:recipe/ui/widgets/recipe_checkbox_widget.dart';
import 'package:recipe/ui/widgets/recipe_divider_widget.dart';
import 'package:recipe/ui/widgets/recipe_text_widget.dart';
import 'package:recipe/ui/widgets/recipe_textfield_widget.dart';

class SignInView extends StatefulWidget {
  const SignInView({Key? key}) : super(key: key);

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  final key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: RecipeColorManager.black),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
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
                        RecipeTextConstants.welcomeBack,
                        textAlign: TextAlign.center,
                        textStyle: RecipeTextStyleManager.regularTextStyle(
                            color: RecipeColorManager.black, fontSize: 30),
                      )
                    ],
                  ),
                ),
                const RecipeSpacer.height(),
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
                          RecipeTextFieldWidget(
                            labelText: "Password",
                            iconData: MdiIcons.eyeOffOutline,
                            obscureText: true,
                          ),
                        ],
                      )),
                ),
                const RecipeSpacer.height(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(children:[
                        const RecipeCheckBoxWidget(),
                        RecipeTextWidget(RecipeTextConstants.remember,
                          textStyle: RecipeTextStyleManager.mediumTextStyle(color: RecipeColorManager.black),),
                      ]),
                      const RecipeSpacer.width(),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, RouteManager.forgotPassword);
                        },
                        child: RecipeTextWidget(RecipeTextConstants.forgotPassword,
                        textStyle: RecipeTextStyleManager.regularTextStyle(color: RecipeColorManager.blue),),
                      )
                    ],
                  ),
                ),
                const RecipeSpacer.largeHeight(),
                RecipeButton(
                  onPresses: () {},
                  addImage: false,
                  fillColor: RecipeColorManager.splash1,
                  textColor: RecipeColorManager.white,
                  text: RecipeTextConstants.login,
                  borderColor: RecipeColorManager.splash,
                ),
                const RecipeSpacer.mediumHeight(),
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
                        child: RecipeTextWidget("or"),
                      ),
                      Expanded(
                          child: RecipeDividerWidget(
                            color: RecipeColorManager.grey,
                            thickness: 1.5,
                          )),
                    ],
                  ),
                ),
                const RecipeSpacer.mediumHeight(),

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
              ],
            )),
      ),
    );
  }
}
