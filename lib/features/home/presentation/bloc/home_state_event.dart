import 'package:bb_assignment/features/home/data/responses/product_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state_event.freezed.dart';

@Freezed(equal: true)
class HomeState with _$HomeState {
  const factory HomeState.loading() = HomeLoadingState;

  const factory HomeState.loaded({
    @Default([]) List<ProductModel> onUiProduct,
    @Default([]) List<int> favoriteIds,
    @Default(0) int skip,
    @Default(0) int total,
    @Default(false) bool isError,
    @Default(true) bool isFetching,
    @Default(false) bool shouldScrollDown,
  }) = HomeLoadedState;
}

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.init() = InitEvent;

  const factory HomeEvent.loadMore() = LoadMoreEvent;

  const factory HomeEvent.favTap({required int id}) = FavTapEvent;

  const factory HomeEvent.search({required String text}) = SearchEvent;
}
