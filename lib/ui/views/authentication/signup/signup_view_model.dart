import 'package:flutter/material.dart';

class SignUpViewModel with ChangeNotifier {
   bool _value = false;

   bool get value => _value;

   void onChanged(bool? value) {
     (value != null ) ? _value = value : _value = false;
     notifyListeners();
   }

}