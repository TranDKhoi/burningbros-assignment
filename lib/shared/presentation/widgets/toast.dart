import 'package:bb_assignment/configs/styles/app_color.dart';
import 'package:bb_assignment/configs/styles/app_style.dart';
import 'package:flutter/material.dart';

class Toast extends StatelessWidget {
  const Toast(this.mess, {super.key});

  final String mess;

  @override
  Widget build(BuildContext context) {
    return Text(
      mess,
      style: AppStyle.boldStyle(color: AppColor.white),
    );
  }
}
