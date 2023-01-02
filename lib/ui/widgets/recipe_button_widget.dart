import 'package:flutter/material.dart';
import 'package:recipe/core/managers/style_manager.dart';
import 'package:recipe/ui/shared/recipe_spacing_widget.dart';
import 'package:recipe/ui/widgets/recipe_text_widget.dart';

class RecipeButton extends StatelessWidget {
  final String text;
  final bool addImage;
  final Color? fillColor;
  final Function()? onPresses;
  final Color textColor;
  final Color borderColor;
  final String imageUrl;

  const RecipeButton({
    Key? key,
    required this.text,
    required this.textColor,
    required this.borderColor,
    required this.imageUrl,
    this.addImage = true,
    this.fillColor,
    this.onPresses,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: RawMaterialButton(
        onPressed: onPresses,
        fillColor: fillColor,
        shape: OutlineInputBorder(
          borderSide: BorderSide(color: borderColor),
          borderRadius: BorderRadius.circular(50),
        ),
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            (addImage) ? Image(
              image: AssetImage(
                imageUrl,
              ),
              width: 25,
              height: 25,
            ) : Container(),
            const RecipeSpacer.width(),
            RecipeTextWidget(
              text,
              textStyle: RecipeTextStyleManager.regularTextStyle(
                  color: textColor, fontSize: 16),
            )
          ],
        ),
      ),
    );
  }
}
