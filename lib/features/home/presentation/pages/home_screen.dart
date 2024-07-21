import 'package:bb_assignment/configs/di/injection.dart';
import 'package:bb_assignment/configs/language/r.dart';
import 'package:bb_assignment/configs/routes/app_route.dart';
import 'package:bb_assignment/configs/styles/app_size.dart';
import 'package:bb_assignment/features/home/presentation/bloc/home_bloc.dart';
import 'package:bb_assignment/features/home/presentation/bloc/home_state_event.dart';
import 'package:bb_assignment/features/home/presentation/widgets/empty_widget.dart';
import 'package:bb_assignment/features/home/presentation/widgets/list_product.dart';
import 'package:bb_assignment/features/home/presentation/widgets/loading_widget.dart';
import 'package:bb_assignment/features/home/presentation/widgets/m_error_widget.dart';
import 'package:bb_assignment/shared/presentation/widgets/gap.dart';
import 'package:bb_assignment/shared/presentation/widgets/m_text_field.dart';
import 'package:bb_assignment/utils/extensions/string.dart';
import 'package:bb_assignment/utils/helper/debouncer.dart';
import 'package:bb_assignment/utils/navigator/navigator_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _bloc = getIt<HomeBloc>();

  final _deBouncer = DeBouncer();
  bool canShowDialog = true;

  @override
  void initState() {
    _bloc.add(const InitEvent());

    super.initState();
  }

  @override
  void dispose() {
    _deBouncer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => _bloc,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          /// search field
          title: MTextField(
            hintText: R.searchProduct.tr,
            controller: _bloc.searchCtrl,
            onChanged: (val) {
              _deBouncer.call(() => _bloc.add(SearchEvent(text: val)));
            },
          ),
          actions: [
            /// setting button
            IconButton(
              onPressed: () {
                NavigatorUtil.pushNamed(route: AppRoute.settingScreen);
              },
              icon: const Icon(Icons.settings),
            ),
          ],
        ),
        body: Column(
          children: [
            /// loading
            const LoadingWidget(),

            /// error
            const MErrorWidget(),

            /// list product
            BlocBuilder<HomeBloc, HomeState>(
              buildWhen: _widgetBuildWhen,
              builder: (context, state) {
                if (state is HomeLoadedState) {
                  if (state.onUiProduct.isEmpty) {
                    return const EmptyWidget();
                  }
                  return const ListProduct();
                }
                return const Gap(AppSize.s0);
              },
            ),
          ],
        ),
      ),
    );
  }

  bool _widgetBuildWhen(HomeState previous, HomeState current) {
    if (previous.runtimeType != current.runtimeType) {
      return true;
    }

    if (previous is HomeLoadedState && current is HomeLoadedState) {
      return previous.onUiProduct != current.onUiProduct;
    }

    return false;
  }
}
