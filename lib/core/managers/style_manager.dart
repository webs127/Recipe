import 'package:flutter/material.dart';

class RecipeTextStyleManager {
  static TextStyle? _style(
          {required Color color,
          required String family,
          required FontWeight fontWeight,
          required double fontSize}) =>
      TextStyle(
          color: color,
          fontSize: fontSize,
          fontFamily: family,
          height: 1.6,
          fontWeight: fontWeight);

  static TextStyle? regularTextStyle(
          {double fontSize = 16,
          FontWeight fontWeight = FontWeight.w400,
          String family = "Inter",
          required Color color}) =>
      _style(
          color: color,
          family: family,
          fontWeight: fontWeight,
          fontSize: fontSize);

  static TextStyle? mediumTextStyle(
          {double fontSize = 16,
          FontWeight fontWeight = FontWeight.w500,
          String family = "Inter",
          required Color color}) =>
      _style(
          color: color,
          family: family,
          fontWeight: fontWeight,
          fontSize: fontSize);

  static TextStyle? semiBoldTextStyle(
          {double fontSize = 16,
          FontWeight fontWeight = FontWeight.w600,
          String family = "Inter",
          required Color color}) =>
      _style(
          color: color,
          family: family,
          fontWeight: fontWeight,
          fontSize: fontSize);

  static TextStyle? boldTextStyle(
          {double fontSize = 16,
          FontWeight fontWeight = FontWeight.w700,
          String family = "Inter",
          required Color color}) =>
      _style(
          color: color,
          family: family,
          fontWeight: fontWeight,
          fontSize: fontSize);

  static TextStyle? extraBoldTextStyle(
          {double fontSize = 16,
          FontWeight fontWeight = FontWeight.w800,
          String family = "Inter",
          required Color color}) =>
      _style(
          color: color,
          family: family,
          fontWeight: fontWeight,
          fontSize: fontSize);

  static TextStyle? blackTextStyle(
          {double fontSize = 16,
          FontWeight fontWeight = FontWeight.w900,
          String family = "Inter",
          required Color color}) =>
      _style(
          color: color,
          family: family,
          fontWeight: fontWeight,
          fontSize: fontSize);
}
