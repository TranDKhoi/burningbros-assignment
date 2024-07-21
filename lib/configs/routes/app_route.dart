import 'package:bb_assignment/features/home/presentation/pages/home_screen.dart';
import 'package:bb_assignment/features/setting/presentation/pages/setting_screen.dart';
import 'package:bb_assignment/features/splash/presentation/pages/splash_screen.dart';
import 'package:flutter/material.dart';

class AppRoute {
  static const String splashScreen = "splashScreen";
  static const String homeScreen = "homeScreen";
  static const String settingScreen = "settingScreen";

  static Route<dynamic> generateRoute(RouteSettings settings) {
    final _ = settings.arguments;

    switch (settings.name ?? "") {
      case splashScreen:
        return _getPageRoute(SplashScreen());
      case homeScreen:
        return _getPageRoute(const HomeScreen());
      case settingScreen:
        return _getPageRoute(const SettingScreen());

      ///
      default:
        return _getPageRoute(
          const Scaffold(
            body: Center(
              child: Text("404 Page not Found"),
            ),
          ),
        );
    }
  }

  static Route _getPageRoute(Widget page) => PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => page,
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return FadeTransition(
            opacity: animation,
            child: child,
          );
        },
      );
}
