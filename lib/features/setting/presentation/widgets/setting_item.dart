import 'package:bb_assignment/configs/styles/app_color.dart';
import 'package:bb_assignment/configs/styles/app_size.dart';
import 'package:flutter/material.dart';

class SettingItem extends StatelessWidget {
  const SettingItem({
    super.key,
    required this.title,
    required this.active,
    required this.onChanged,
  });

  final String title;
  final bool active;
  final Function(bool val) onChanged;

  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      shape: RoundedRectangleBorder(
        side: const BorderSide(
          width: AppSize.s1,
          color: AppColor.grey,
        ),
        borderRadius: BorderRadius.circular(
          AppSize.r8,
        ),
      ),
      title: Text(title),
      value: active,
      onChanged: onChanged,
    );
  }
}
