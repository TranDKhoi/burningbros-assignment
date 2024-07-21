import 'package:bb_assignment/configs/styles/app_color.dart';
import 'package:bb_assignment/configs/styles/app_size.dart';
import 'package:flutter/material.dart';

class MBox extends StatelessWidget {
  const MBox({
    required this.child,
    this.padding = EdgeInsets.zero,
    this.radius = AppSize.r8,
    this.borderWidth = 0.3,
    super.key,
  });

  final EdgeInsets padding;
  final double radius;
  final double borderWidth;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        border: Border.all(
          width: borderWidth,
          color: borderWidth > 0 ? AppColor.adaptiveHintColor(context) : AppColor.trans,
        ),
      ),
      child: child,
    );
  }
}
