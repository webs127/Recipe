import 'package:flutter/material.dart';

class RecipeDividerWidget extends StatelessWidget {
  final Color? color;
  final double? height;
  final double? thickness;

  const RecipeDividerWidget({required this.color, this.height, this.thickness, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Divider(
      height: height,
      thickness: thickness,
      color: color,
    );
  }
}
