import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:recipe/app/routes.dart';
import 'package:recipe/core/constants/image_constants.dart';
import 'package:recipe/core/constants/text_constants.dart';
import 'package:recipe/core/managers/color_manager.dart';
import 'package:recipe/core/managers/style_manager.dart';
import 'package:recipe/ui/shared/recipe_spacing_widget.dart';
import 'package:recipe/ui/widgets/recipe_button_widget.dart';
import 'package:recipe/ui/widgets/recipe_text_widget.dart';
import 'package:recipe/ui/widgets/recipe_textfield_widget.dart';

class ResetPasswordView extends StatefulWidget {
  const ResetPasswordView({Key? key}) : super(key: key);

  @override
  State<ResetPasswordView> createState() => _ResetPasswordViewState();
}

class _ResetPasswordViewState extends State<ResetPasswordView> {
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
        physics: const NeverScrollableScrollPhysics(),
        child: SizedBox(
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
                      RecipeTextConstants.reset,
                      textAlign: TextAlign.center,
                      textStyle: RecipeTextStyleManager.mediumTextStyle(
                          color: RecipeColorManager.black, fontSize: 30),
                    ),
                    RecipeTextWidget(
                      RecipeTextConstants.resetMessage,
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
                          iconData: MdiIcons.eyeOffOutline,
                          obscureText: true,
                          labelText: RecipeTextConstants.password,
                        ),
                        RecipeSpacer.mediumHeight(),
                        RecipeTextFieldWidget(
                          iconData: MdiIcons.eyeOffOutline,
                          obscureText: true,
                          labelText: RecipeTextConstants.confirmPassword,
                        ),
                        RecipeSpacer.mediumHeight(),
                      ],
                    )),
              ),
              const RecipeSpacer.largeHeight(),
              RecipeButton(
                onPresses: () {},
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
      ),
    );
  }
}
