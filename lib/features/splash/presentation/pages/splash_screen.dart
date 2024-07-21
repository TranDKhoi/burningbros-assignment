import 'package:bb_assignment/configs/di/injection.dart';
import 'package:bb_assignment/configs/routes/app_route.dart';
import 'package:bb_assignment/features/app/bloc/app_bloc.dart';
import 'package:bb_assignment/features/app/bloc/app_state_event.dart';
import 'package:bb_assignment/utils/navigator/navigator_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});

  final _appBloc = getIt<AppBloc>();

  @override
  StatelessElement createElement() {
    _appBloc.add(const InitEvent());
    return super.createElement();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AppBloc, AppState>(
      bloc: _appBloc,
      listener: (context, state) async {
        await Future.delayed(const Duration(seconds: 3));
        NavigatorUtil.pushNamedAndRemoveUntil(route: AppRoute.homeScreen);
      },
      child: const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
