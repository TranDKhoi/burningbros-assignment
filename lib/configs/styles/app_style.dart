import 'package:bb_assignment/configs/styles/app_size.dart';
import 'package:flutter/material.dart';

class AppStyle {
  static TextStyle regularStyle({
    double fontSize = AppSize.s14,
    Color? color,
  }) {
    return TextStyle(
      fontSize: fontSize,
      color: color,
    );
  }

  static TextStyle boldStyle({
    double fontSize = AppSize.s14,
    FontWeight fontWeight = FontWeight.bold,
    Color? color,
  }) {
    return TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
    );
  }
}
