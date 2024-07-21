import 'dart:async';

import 'package:bb_assignment/features/home/data/responses/product_response.dart';
import 'package:bb_assignment/features/home/domain/usecase/home_usecase.dart';
import 'package:bb_assignment/features/home/presentation/bloc/home_state_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeUseCase _useCase;

  final int limit = 20; // caution: 0 means get all

  final searchCtrl = TextEditingController();

  /// MAP EVENTS TO STATES
  HomeBloc(this._useCase) : super(const HomeLoadingState()) {
    on<InitEvent>(_onInitEvent);
    on<LoadMoreEvent>(_onLoadMoreEvent);
    on<FavTapEvent>(_onFavTapEvent);
    on<SearchEvent>(_onSearchEvent);
  }

  Future<void> _onInitEvent(InitEvent event, Emitter<HomeState> emit) async {
    /// fetch cached data
    if (state is HomeLoadingState) {
      await _fetchCachedProduct(emit);
    }

    if (state is HomeLoadedState) {
      ///fetch latest product
      var fetchedProds = await _fetchProduct(emit);

      /// save latest product to cache
      _useCase.saveCacheData(fetchedProds);
    }
  }

  Future<void> _onLoadMoreEvent(
      LoadMoreEvent event, Emitter<HomeState> emit) async {
    /// call api to load more
    if (state is HomeLoadedState) {
      var curState = state as HomeLoadedState;

      /// return if still fetching
      if (curState.isFetching) return;

      /// fetch next page (skip)
      var skip = curState.onUiProduct.length;
      var searchText = searchCtrl.text;

      if (searchText.isEmpty) {
        await _fetchProduct(emit, skip: skip, shouldScrollDown: true);
      } else {
        await _searchProduct(emit,
            skip: skip, shouldScrollDown: true, text: searchText);
      }
    }
  }

  Future<void> _onFavTapEvent(
      FavTapEvent event, Emitter<HomeState> emit) async {
    var favIds = await _useCase.onProductFavTap(id: event.id);
    if (state is HomeLoadedState) {
      var curState = state as HomeLoadedState;
      emit(curState.copyWith(favoriteIds: favIds));
    }
  }

  Future<void> _onSearchEvent(
      SearchEvent event, Emitter<HomeState> emit) async {
    if (state is HomeLoadedState) {
      var curState = state as HomeLoadedState;

      /// return if still fetching
      if (curState.isFetching) return;

      var searchText = event.text.trim();

      /// fetch by default
      if (searchText.isEmpty) {
        await _fetchProduct(emit);
        return;
      }

      /// search product
      await _searchProduct(emit, text: searchText);
    }
  }

  Future<void> _fetchCachedProduct(Emitter<HomeState> emit) async {
    List<ProductModel> res = await _useCase.getCachedData();
    List<int> favIds = await _useCase.getFavProduct();

    emit(
      HomeLoadedState(
        onUiProduct: res,
        favoriteIds: favIds,
      ),
    );
  }

  Future<List<ProductModel>> _fetchProduct(
    Emitter<HomeState> emit, {
    int skip = 0,
    bool shouldScrollDown = false,
  }) async {
    var curState = state as HomeLoadedState;

    emit(
      curState.copyWith(
        isFetching: true,
      ),
    );

    var res = await _useCase.getProducts(limit: limit, skip: skip);

    var fetchedData = res.when(
      success: (data) => data,
      failure: (error) {
        emit(
          curState.copyWith(
            isError: true,
            isFetching: false,
            shouldScrollDown: true,
          ),
        );
      },
    );

    if (fetchedData != null) {
      ///null means error
      var totalProduct = [
        ...(skip == 0 ? <ProductModel>[] : curState.onUiProduct),
        ...fetchedData.products
      ];

      emit(
        curState.copyWith(
          isFetching: false,
          isError: false,
          total: fetchedData.total,
          shouldScrollDown: shouldScrollDown,
          skip: skip + fetchedData.products.length,
          onUiProduct: totalProduct,
        ),
      );

      return totalProduct;
    }
    return [];
  }

  Future<List<ProductModel>> _searchProduct(
    Emitter<HomeState> emit, {
    int skip = 0,
    bool shouldScrollDown = false,
    String text = "",
  }) async {
    var curState = state as HomeLoadedState;

    if (skip == curState.total) {
      /// cannot fetch anymore
      return [];
    }

    emit(
      curState.copyWith(
        isFetching: true,
      ),
    );

    var res =
        await _useCase.searchProduct(limit: limit, skip: skip, query: text);

    var searchedData = res.when(
      success: (data) => data,
      failure: (error) {
        emit(
          curState.copyWith(
            isError: true,
            isFetching: false,
            shouldScrollDown: true,
          ),
        );
      },
    );

    if (searchedData != null) {
      ///null means error
      var totalProduct = [
        ...(skip == 0 ? <ProductModel>[] : curState.onUiProduct),
        ...searchedData.products
      ];

      emit(
        curState.copyWith(
          isError: false,
          isFetching: false,
          total: searchedData.total,
          shouldScrollDown: shouldScrollDown,
          skip: skip + searchedData.products.length,
          onUiProduct: totalProduct,
        ),
      );

      return totalProduct;
    }
    return [];
  }
}
