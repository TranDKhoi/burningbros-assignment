import 'package:bb_assignment/configs/styles/app_color.dart';
import 'package:bb_assignment/configs/styles/app_size.dart';
import 'package:bb_assignment/features/home/presentation/bloc/home_bloc.dart';
import 'package:bb_assignment/features/home/presentation/bloc/home_state_event.dart';
import 'package:bb_assignment/shared/presentation/widgets/gap.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavButton extends StatelessWidget {
  const FavButton({required this.id, super.key});

  final int id;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      buildWhen: _widgetBuildWhen,
      builder: (context, state) {
        if (state is HomeLoadedState) {
          var iconColor =
              state.favoriteIds.contains(id) ? AppColor.redAccent : null;
          var icon = state.favoriteIds.contains(id)
              ? Icons.favorite
              : Icons.favorite_border;
          return IconButton(
            onPressed: () {
              context.read<HomeBloc>().add(FavTapEvent(id: id));
            },
            icon: Icon(
              icon,
              color: iconColor,
            ),
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
      return previous.favoriteIds != current.favoriteIds;
    }

    return false;
  }
}
