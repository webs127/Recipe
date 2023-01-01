import 'package:flutter/material.dart';

class RecipeTextWidget extends StatelessWidget {
  final String data;
  final TextStyle? textStyle;
  final TextAlign? textAlign;
  const RecipeTextWidget(this.data, {Key? key, this.textStyle, this.textAlign})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: textStyle,
      textAlign: textAlign,
    );
  }
}
