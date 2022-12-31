import 'package:flutter/material.dart';

extension HexColor on Color {
  static Color hexString(String string) {
    string = string.replaceAll("#", "");
    if(string.length == 6) {
      string ="FF$string";
    }
    return Color(int.parse(string, radix: 16));
  }
}