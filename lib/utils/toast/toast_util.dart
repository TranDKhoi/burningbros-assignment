import 'package:bb_assignment/configs/styles/app_color.dart';
import 'package:bb_assignment/configs/styles/app_size.dart';
import 'package:bb_assignment/shared/presentation/widgets/toast.dart';
import 'package:bb_assignment/utils/global_keys/keys.dart';
import 'package:flutter/material.dart';

class ToastUtil {
  static final _key = scaffoldMessengerKey.currentState;

  static void showToast(String mess) {
    _key?.showSnackBar(
      SnackBar(
        content: Toast(mess),
        margin: const EdgeInsets.all(AppSize.m8),
        backgroundColor: AppColor.black.withOpacity(.5),
        behavior: SnackBarBehavior.floating,
      ),
      snackBarAnimationStyle: AnimationStyle(
        duration: const Duration(seconds: 1),
        curve: Curves.easeInOut,
      ),
    );
  }
}
