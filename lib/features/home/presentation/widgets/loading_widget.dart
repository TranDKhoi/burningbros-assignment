import 'package:bb_assignment/configs/styles/app_size.dart';
import 'package:bb_assignment/features/home/presentation/bloc/home_bloc.dart';
import 'package:bb_assignment/features/home/presentation/bloc/home_state_event.dart';
import 'package:bb_assignment/shared/presentation/widgets/gap.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      buildWhen: (previous, current) {
        if (previous.runtimeType != current.runtimeType) {
          return true;
        }

        if (previous is HomeLoadedState && current is HomeLoadedState) {
          return previous.isFetching != current.isFetching;
        }

        return false;
      },
      builder: (context, state) {
        if (state is HomeLoadedState) {
          return AnimatedOpacity(
            opacity: state.isFetching ? 1 : 0,
            duration: const Duration(milliseconds: 200),
            child: const LinearProgressIndicator(),
          );
        }
        return const Gap(AppSize.s0);
      },
    );
  }
}
