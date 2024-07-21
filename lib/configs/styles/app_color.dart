import 'package:bb_assignment/utils/extensions/context.dart';
import 'package:flutter/material.dart';

class AppColor {
  static const white = Colors.white;
  static const black = Colors.black;
  static const green = Colors.green;
  static const redAccent = Colors.redAccent;
  static const grey = Colors.grey;
  static const blue = Color(0xff508ae2);
  static const trans = Colors.transparent;

  /// adaptive means they will change based on theme mode
  static Color adaptiveHintColor(BuildContext context) =>
      context.theme.dividerColor;

  static Color adaptiveTextColor(BuildContext context) =>
      context.theme.textTheme.titleLarge!.color!;
}
