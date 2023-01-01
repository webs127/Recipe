import 'package:flutter/material.dart';

class RecipeSpacer extends StatelessWidget {
  final double width;
  final double height;

  const RecipeSpacer._({Key? key}) : width = 0, height = 0, super(key: key);
  const RecipeSpacer.height({Key? key}) : width = 0, height = 16, super(key: key);
  const RecipeSpacer.largeHeight({Key? key}) : width = 0, height = 56, super(key: key);


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
    );
  }
}
