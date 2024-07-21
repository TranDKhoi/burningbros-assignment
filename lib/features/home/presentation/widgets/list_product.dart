import 'package:bb_assignment/configs/language/r.dart';
import 'package:bb_assignment/configs/styles/app_color.dart';
import 'package:bb_assignment/configs/styles/app_size.dart';
import 'package:bb_assignment/configs/styles/app_style.dart';
import 'package:bb_assignment/features/home/presentation/bloc/home_bloc.dart';
import 'package:bb_assignment/features/home/presentation/bloc/home_state_event.dart';
import 'package:bb_assignment/features/home/presentation/widgets/product_item.dart';
import 'package:bb_assignment/shared/presentation/widgets/gap.dart';
import 'package:bb_assignment/utils/extensions/string.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListProduct extends StatefulWidget {
  const ListProduct({super.key});

  @override
  State<ListProduct> createState() => _ListProductState();
}

class _ListProductState extends State<ListProduct> {
  late HomeBloc _bloc;
  final ScrollController scrollController = ScrollController();

  @override
  void initState() {
    _bloc = context.read<HomeBloc>();

    scrollController.addListener(_scrollListener);

    super.initState();
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
      listener: _stateListener,
      listenWhen: _stateListenWhen,
      buildWhen: _widgetBuildWhen,
      builder: (context, state) {
        if (state is HomeLoadedState) {
          return Expanded(
            child: ListView.separated(
              controller: scrollController,
              padding: const EdgeInsets.all(AppSize.p16),
              itemBuilder: (_, i) {
                var isEndOfList = i + 1 == state.total;

                if (!isEndOfList) {
                  return ProductItem(state.onUiProduct[i]);
                }

                /// last item
                return Column(
                  children: [
                    ProductItem(state.onUiProduct[i]),
                    const Gap(AppSize.s8),
                    Text(
                      R.thisIsTheLastItem.tr,
                      style: AppStyle.regularStyle(
                        color: AppColor.adaptiveTextColor(context),
                      ),
                    ),
                  ],
                );
              },
              separatorBuilder: (context, index) => const Gap(AppSize.s16),
              itemCount: state.onUiProduct.length,
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
      return previous.onUiProduct != current.onUiProduct;
    }

    return false;
  }

  void _stateListener(BuildContext context, HomeState state) {
    if (state is HomeLoadedState) {
      if (state.isFetching) return;

      if (!state.shouldScrollDown) {
        /// happen when you scroll down to see cached products and fetch api success
        /// it will scroll to top again for latest data
        scrollController.animateTo(0,
            duration: const Duration(milliseconds: 500), curve: Curves.easeIn);
      } else {
        /// happen when scroll to end of the list
        /// it will scroll down a bit more so you know there are new products added
        scrollController.animateTo(scrollController.position.pixels + 150,
            duration: const Duration(milliseconds: 500), curve: Curves.easeIn);
      }

      FocusScope.of(context).unfocus();
    }
  }

  void _scrollListener() {
    /// end of list listener
    if (scrollController.position.pixels >=
        scrollController.position.maxScrollExtent) {
      if (_bloc.state is HomeLoadedState) {
        _bloc.add(const LoadMoreEvent());
      }
    }
  }

  bool _stateListenWhen(HomeState previous, HomeState current) {
    if (previous.runtimeType != current.runtimeType) {
      return true;
    }

    if (previous is HomeLoadedState && current is HomeLoadedState) {
      return previous.onUiProduct != current.onUiProduct;
    }

    return false;
  }
}
