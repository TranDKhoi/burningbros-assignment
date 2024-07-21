import 'package:bb_assignment/configs/di/injection.dart';
import 'package:bb_assignment/configs/language/r.dart';
import 'package:bb_assignment/configs/styles/app_size.dart';
import 'package:bb_assignment/features/app/bloc/app_bloc.dart';
import 'package:bb_assignment/features/app/bloc/app_state_event.dart';
import 'package:bb_assignment/features/setting/presentation/widgets/setting_item.dart';
import 'package:bb_assignment/shared/presentation/widgets/gap.dart';
import 'package:bb_assignment/utils/extensions/string.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  var appBloc = getIt<AppBloc>();

  @override
  Widget build(BuildContext context) {
    var isVietnamese = appBloc.state.currentLangCode == "vi";
    var isDark = appBloc.state.isDark;

    return Scaffold(
      appBar: AppBar(
        title: Text(R.settings.tr),
      ),
      body: Padding(
        padding: const EdgeInsets.all(AppSize.p16),
        child: Column(
          children: [
            SettingItem(
              title: R.vietnamese.tr,
              active: isVietnamese,
              onChanged: (val) {
                appBloc.add(const ChangeLanguageEvent());
              },
            ),
            const Gap(AppSize.s8),
            SettingItem(
              title: R.darkMode.tr,
              active: isDark,
              onChanged: (val) {
                appBloc.add(const ChangeThemeModeEvent());
              },
            ),
          ],
        ),
      ),
    );
  }
}
