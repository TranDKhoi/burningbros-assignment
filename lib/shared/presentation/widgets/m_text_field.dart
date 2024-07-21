import 'package:bb_assignment/configs/styles/app_color.dart';
import 'package:bb_assignment/configs/styles/app_size.dart';
import 'package:bb_assignment/configs/styles/app_style.dart';
import 'package:flutter/material.dart';

class MTextField extends StatelessWidget {
  const MTextField({
    this.controller,
    this.hintText,
    this.onChanged,
    super.key,
  });

  final TextEditingController? controller;
  final String? hintText;
  final Function(String val)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSize.p8,
        vertical: AppSize.p6,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          width: AppSize.s1,
          color: AppColor.grey,
        ),
        borderRadius: BorderRadius.circular(AppSize.r8),
      ),
      child: TextFormField(
        controller: controller,
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: AppStyle.regularStyle(
            color: AppColor.adaptiveHintColor(context),
          ),
          border: InputBorder.none,
          isDense: true,
        ),
      ),
    );
  }
}
