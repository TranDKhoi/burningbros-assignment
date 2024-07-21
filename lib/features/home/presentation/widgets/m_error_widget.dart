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

class MErrorWidget extends StatelessWidget {
  const MErrorWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
      buildWhen: _widgetBuildWhen,
      listener: _stateListener,
      builder: (context, state) {
        if (state is HomeLoadedState && state.isError) {
          return Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                R.somethingWentWrong.tr,
                textAlign: TextAlign.center,
                style: AppStyle.regularStyle(
                  fontSize: AppSize.s18,
                  color: AppColor.adaptiveTextColor(context),
                ),
              ),
              TextButton(
                onPressed: () {
                  context.read<HomeBloc>().add(const InitEvent());
                },
                child: Text(R.tryAgain.tr),
              ),
            ],
          );
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

  void _stateListener(BuildContext context, HomeState state) {
    if (state is HomeLoadedState) {
      if (state.isError) {
        FocusScope.of(context).unfocus();
      }
    }
  }
}
