import 'package:flutter/material.dart';
import 'package:recipe/core/managers/color_manager.dart';
import 'package:recipe/core/managers/style_manager.dart';

class RecipeTextFieldWidget extends StatelessWidget {
  final String? labelText;
  final TextEditingController? controller;
  final String? Function(String? data)? validator;
  final bool obscureText;
  final IconData? iconData;
  const RecipeTextFieldWidget({
    Key? key,
    this.labelText,
    this.obscureText = false,
    this.validator,
    this.iconData,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      validator: validator,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: RecipeTextStyleManager.regularTextStyle(
            color: RecipeColorManager.black, fontSize: 18),
        suffixIcon: Icon(
          iconData,
          color: RecipeColorManager.black,
        ),
        border: UnderlineInputBorder(
            borderSide: BorderSide(color: RecipeColorManager.black)),
        enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: RecipeColorManager.black)),
        enabled: true,
        focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: RecipeColorManager.black)),
      ),
      cursorColor: RecipeColorManager.black,
      cursorHeight: 20,
    );
  }
}
