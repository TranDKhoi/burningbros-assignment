import 'package:flutter/material.dart';

extension ScreenSize on BuildContext {
  double get deviceHeight => MediaQuery.sizeOf(this).height;

  double get deviceWidth => MediaQuery.sizeOf(this).width;

  ThemeData get theme => Theme.of(this);
}
