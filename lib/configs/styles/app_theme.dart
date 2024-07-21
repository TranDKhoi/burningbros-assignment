import 'package:bb_assignment/configs/const/fonts.dart';
import 'package:bb_assignment/configs/styles/app_color.dart';
import 'package:flutter/material.dart';

class AppTheme {
  /// BASE ===================================================
  static const _fontFamily = FontConst.roboto;
  static final _colorScheme = ColorScheme.fromSeed(
    seedColor: AppColor.green,
  );
  static const _appBarTheme = AppBarTheme(
    elevation: 0,
    backgroundColor: AppColor.trans,
    surfaceTintColor: AppColor.trans,
  );

  /// LIGHT ===================================================
  static final lightTheme = ThemeData(
    fontFamily: _fontFamily,
    colorScheme: _colorScheme,
    textTheme: ThemeData.light().textTheme,
    scaffoldBackgroundColor: Colors.white,
    listTileTheme: const ListTileThemeData(
      textColor: AppColor.black,
    ),
    appBarTheme: _appBarTheme.copyWith(
      foregroundColor: AppColor.black,
    ),
  );

  /// DARK ===================================================
  static final darkTheme = ThemeData(
    fontFamily: _fontFamily,
    colorScheme: _colorScheme,
    textTheme: ThemeData.dark().textTheme,
    scaffoldBackgroundColor: Colors.black,
    listTileTheme: const ListTileThemeData(
      textColor: AppColor.white,
    ),
    appBarTheme: _appBarTheme.copyWith(
      foregroundColor: AppColor.white,
    ),
  );
}
