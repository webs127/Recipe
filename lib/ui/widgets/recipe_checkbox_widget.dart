import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recipe/ui/views/authentication/signup/signup_view_model.dart';

class RecipeCheckBoxWidget extends StatelessWidget {
  const RecipeCheckBoxWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<SignUpViewModel>(
        builder: (context, data, __) {
          return Checkbox(
              fillColor: MaterialStateColor.resolveWith((states) => Colors.black),
              value: data.value,
              onChanged: data.onChanged
          );
        }
    );
  }
}

