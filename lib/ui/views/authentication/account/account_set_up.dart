import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recipe/app/routes.dart';
import 'package:recipe/core/constants/text_constants.dart';
import 'package:recipe/core/managers/color_manager.dart';
import 'package:recipe/core/managers/style_manager.dart';
import 'package:recipe/ui/shared/recipe_spacing_widget.dart';
import 'package:recipe/ui/views/authentication/account/account_setup_view_model.dart';
import 'package:recipe/ui/widgets/recipe_button_widget.dart';
import 'package:recipe/ui/widgets/recipe_text_widget.dart';

class AccountSetUpView extends StatefulWidget {
  const AccountSetUpView({Key? key}) : super(key: key);

  @override
  State<AccountSetUpView> createState() => _AccountSetUpViewState();
}

class _AccountSetUpViewState extends State<AccountSetUpView> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: RecipeColorManager.white1,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: RecipeColorManager.black,
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: RecipeTextWidget(
          RecipeTextConstants.accountSetUp,
          textStyle: RecipeTextStyleManager.semiBoldTextStyle(
              color: RecipeColorManager.black, fontSize: 18),
        ),
      ),
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: SizedBox(
          width: size.width,
          height: size.height,
          child: Consumer<AccountSetUpViewModel>(builder: (context, data, __) {
            return Column(
              children: [
                const RecipeSpacer.height(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                      2,
                      (index) => Container(
                            width: 50,
                            height: 10 / 3,
                            color: (index == data.counter)
                                ? RecipeColorManager.splash1
                                : RecipeColorManager.grey,
                            margin: const EdgeInsets.only(right: 5),
                          )),
                ),
                const RecipeSpacer.mediumHeight(),
                SizedBox(
                  width: size.width,
                  height: size.height - 300,
                  child: PageView.builder(
                      controller: data.pageController,
                      onPageChanged: data.currentPage,
                      itemCount: 2,
                      itemBuilder: (context, i) {
                        return Column(
                          children: [
                            SizedBox(
                              width: 285,
                              height: 98,
                              child: Column(
                                children: [
                                  RecipeTextWidget(
                                    RecipeTextConstants.allergic,
                                    textAlign: TextAlign.center,
                                    textStyle:
                                        RecipeTextStyleManager.mediumTextStyle(
                                            color: RecipeColorManager.black,
                                            fontSize: 30),
                                  ),
                                ],
                              ),
                            ),
                            const RecipeSpacer.height(),
                            RecipeTextWidget(
                              RecipeTextConstants.avoid,
                              textAlign: TextAlign.center,
                              textStyle: RecipeTextStyleManager.mediumTextStyle(
                                  color: RecipeColorManager.grey, fontSize: 16),
                            ),
                            const RecipeSpacer.height(),
                            SizedBox(
                              width: size.width,
                              height: size.height - 500,
                              child: GridView.builder(
                                  physics: const NeverScrollableScrollPhysics(),
                                  itemCount: data.length,
                                  gridDelegate:
                                      const SliverGridDelegateWithFixedCrossAxisCount(
                                          childAspectRatio: 1.89,
                                          crossAxisCount: 2),
                                  itemBuilder: (context, i) {
                                    return GridTile(
                                        child: Image(
                                      image: AssetImage(
                                          data.imageBackgroundPicture(i)),
                                    ));
                                  }),
                            )
                          ],
                        );
                      }),
                ),
                RecipeButton(
                  onPresses: () {
                    (data.counter != 1)
                        ? data.nextPage()
                        : Navigator.pushReplacementNamed(context, RouteManager.home);
                  },
                  addImage: false,
                  textColor: RecipeColorManager.white1,
                  text: RecipeTextConstants.continueMess,
                  borderColor: RecipeColorManager.splash1,
                  fillColor: RecipeColorManager.splash1,
                ),
              ],
            );
          }),
        ),
      ),
    );
  }
}
