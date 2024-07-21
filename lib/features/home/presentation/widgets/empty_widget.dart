import 'package:bb_assignment/configs/const/images.dart';
import 'package:bb_assignment/configs/language/r.dart';
import 'package:bb_assignment/configs/styles/app_color.dart';
import 'package:bb_assignment/configs/styles/app_size.dart';
import 'package:bb_assignment/configs/styles/app_style.dart';
import 'package:bb_assignment/features/home/presentation/bloc/home_bloc.dart';
import 'package:bb_assignment/features/home/presentation/bloc/home_state_event.dart';
import 'package:bb_assignment/shared/presentation/widgets/gap.dart';
import 'package:bb_assignment/utils/extensions/string.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EmptyWidget extends StatelessWidget {
  const EmptyWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      buildWhen: _widgetBuildWhen,
      builder: (context, state) {
        if (state is HomeLoadedState) {
          if (state.isError) {
            return Padding(
              padding: const EdgeInsets.all(AppSize.p64),
              child: Column(
                children: [
                  Image.asset(
                    ImageConst.icEmpty,
                    color: AppColor.adaptiveTextColor(context),
                  ),
                  const Gap(AppSize.s8),
                  Text(
                    R.noProductFound.tr,
                    style: AppStyle.regularStyle(
                      fontSize: AppSize.s18,
                      color: AppColor.adaptiveTextColor(context),
                    ),
                  ),
                ],
              ),
            );
          }
        }
        return const Gap(AppSize.s0);
      },
    );
  }

  bool _widgetBuildWhen(HomeState previous, HomeState current) {
    if (previous.runtimeType != current.runtimeType) {
      return true;
    }

    if (previous is HomeLoadedState && current is HomeLoadedState) {
      return previous.isError != current.isError;
    }

    return false;
  }
}
