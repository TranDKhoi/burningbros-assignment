// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            List<ProductModel> onUiProduct,
            List<int> favoriteIds,
            int skip,
            int total,
            bool isError,
            bool isFetching,
            bool shouldScrollDown)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
            List<ProductModel> onUiProduct,
            List<int> favoriteIds,
            int skip,
            int total,
            bool isError,
            bool isFetching,
            bool shouldScrollDown)?
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            List<ProductModel> onUiProduct,
            List<int> favoriteIds,
            int skip,
            int total,
            bool isError,
            bool isFetching,
            bool shouldScrollDown)?
        loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeLoadingState value) loading,
    required TResult Function(HomeLoadedState value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeLoadingState value)? loading,
    TResult? Function(HomeLoadedState value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeLoadingState value)? loading,
    TResult Function(HomeLoadedState value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$HomeLoadingStateImplCopyWith<$Res> {
  factory _$$HomeLoadingStateImplCopyWith(_$HomeLoadingStateImpl value,
          $Res Function(_$HomeLoadingStateImpl) then) =
      __$$HomeLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeLoadingStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeLoadingStateImpl>
    implements _$$HomeLoadingStateImplCopyWith<$Res> {
  __$$HomeLoadingStateImplCopyWithImpl(_$HomeLoadingStateImpl _value,
      $Res Function(_$HomeLoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HomeLoadingStateImpl implements HomeLoadingState {
  const _$HomeLoadingStateImpl();

  @override
  String toString() {
    return 'HomeState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HomeLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            List<ProductModel> onUiProduct,
            List<int> favoriteIds,
            int skip,
            int total,
            bool isError,
            bool isFetching,
            bool shouldScrollDown)
        loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
            List<ProductModel> onUiProduct,
            List<int> favoriteIds,
            int skip,
            int total,
            bool isError,
            bool isFetching,
            bool shouldScrollDown)?
        loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            List<ProductModel> onUiProduct,
            List<int> favoriteIds,
            int skip,
            int total,
            bool isError,
            bool isFetching,
            bool shouldScrollDown)?
        loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeLoadingState value) loading,
    required TResult Function(HomeLoadedState value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeLoadingState value)? loading,
    TResult? Function(HomeLoadedState value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeLoadingState value)? loading,
    TResult Function(HomeLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class HomeLoadingState implements HomeState {
  const factory HomeLoadingState() = _$HomeLoadingStateImpl;
}

/// @nodoc
abstract class _$$HomeLoadedStateImplCopyWith<$Res> {
  factory _$$HomeLoadedStateImplCopyWith(_$HomeLoadedStateImpl value,
          $Res Function(_$HomeLoadedStateImpl) then) =
      __$$HomeLoadedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<ProductModel> onUiProduct,
      List<int> favoriteIds,
      int skip,
      int total,
      bool isError,
      bool isFetching,
      bool shouldScrollDown});
}

/// @nodoc
class __$$HomeLoadedStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeLoadedStateImpl>
    implements _$$HomeLoadedStateImplCopyWith<$Res> {
  __$$HomeLoadedStateImplCopyWithImpl(
      _$HomeLoadedStateImpl _value, $Res Function(_$HomeLoadedStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? onUiProduct = null,
    Object? favoriteIds = null,
    Object? skip = null,
    Object? total = null,
    Object? isError = null,
    Object? isFetching = null,
    Object? shouldScrollDown = null,
  }) {
    return _then(_$HomeLoadedStateImpl(
      onUiProduct: null == onUiProduct
          ? _value._onUiProduct
          : onUiProduct // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
      favoriteIds: null == favoriteIds
          ? _value._favoriteIds
          : favoriteIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      skip: null == skip
          ? _value.skip
          : skip // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      isFetching: null == isFetching
          ? _value.isFetching
          : isFetching // ignore: cast_nullable_to_non_nullable
              as bool,
      shouldScrollDown: null == shouldScrollDown
          ? _value.shouldScrollDown
          : shouldScrollDown // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$HomeLoadedStateImpl implements HomeLoadedState {
  const _$HomeLoadedStateImpl(
      {final List<ProductModel> onUiProduct = const [],
      final List<int> favoriteIds = const [],
      this.skip = 0,
      this.total = 0,
      this.isError = false,
      this.isFetching = true,
      this.shouldScrollDown = false})
      : _onUiProduct = onUiProduct,
        _favoriteIds = favoriteIds;

  final List<ProductModel> _onUiProduct;
  @override
  @JsonKey()
  List<ProductModel> get onUiProduct {
    if (_onUiProduct is EqualUnmodifiableListView) return _onUiProduct;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_onUiProduct);
  }

  final List<int> _favoriteIds;
  @override
  @JsonKey()
  List<int> get favoriteIds {
    if (_favoriteIds is EqualUnmodifiableListView) return _favoriteIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favoriteIds);
  }

  @override
  @JsonKey()
  final int skip;
  @override
  @JsonKey()
  final int total;
  @override
  @JsonKey()
  final bool isError;
  @override
  @JsonKey()
  final bool isFetching;
  @override
  @JsonKey()
  final bool shouldScrollDown;

  @override
  String toString() {
    return 'HomeState.loaded(onUiProduct: $onUiProduct, favoriteIds: $favoriteIds, skip: $skip, total: $total, isError: $isError, isFetching: $isFetching, shouldScrollDown: $shouldScrollDown)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeLoadedStateImpl &&
            const DeepCollectionEquality()
                .equals(other._onUiProduct, _onUiProduct) &&
            const DeepCollectionEquality()
                .equals(other._favoriteIds, _favoriteIds) &&
            (identical(other.skip, skip) || other.skip == skip) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.isFetching, isFetching) ||
                other.isFetching == isFetching) &&
            (identical(other.shouldScrollDown, shouldScrollDown) ||
                other.shouldScrollDown == shouldScrollDown));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_onUiProduct),
      const DeepCollectionEquality().hash(_favoriteIds),
      skip,
      total,
      isError,
      isFetching,
      shouldScrollDown);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeLoadedStateImplCopyWith<_$HomeLoadedStateImpl> get copyWith =>
      __$$HomeLoadedStateImplCopyWithImpl<_$HomeLoadedStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            List<ProductModel> onUiProduct,
            List<int> favoriteIds,
            int skip,
            int total,
            bool isError,
            bool isFetching,
            bool shouldScrollDown)
        loaded,
  }) {
    return loaded(onUiProduct, favoriteIds, skip, total, isError, isFetching,
        shouldScrollDown);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
            List<ProductModel> onUiProduct,
            List<int> favoriteIds,
            int skip,
            int total,
            bool isError,
            bool isFetching,
            bool shouldScrollDown)?
        loaded,
  }) {
    return loaded?.call(onUiProduct, favoriteIds, skip, total, isError,
        isFetching, shouldScrollDown);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            List<ProductModel> onUiProduct,
            List<int> favoriteIds,
            int skip,
            int total,
            bool isError,
            bool isFetching,
            bool shouldScrollDown)?
        loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(onUiProduct, favoriteIds, skip, total, isError, isFetching,
          shouldScrollDown);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeLoadingState value) loading,
    required TResult Function(HomeLoadedState value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeLoadingState value)? loading,
    TResult? Function(HomeLoadedState value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeLoadingState value)? loading,
    TResult Function(HomeLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class HomeLoadedState implements HomeState {
  const factory HomeLoadedState(
      {final List<ProductModel> onUiProduct,
      final List<int> favoriteIds,
      final int skip,
      final int total,
      final bool isError,
      final bool isFetching,
      final bool shouldScrollDown}) = _$HomeLoadedStateImpl;

  List<ProductModel> get onUiProduct;
  List<int> get favoriteIds;
  int get skip;
  int get total;
  bool get isError;
  bool get isFetching;
  bool get shouldScrollDown;
  @JsonKey(ignore: true)
  _$$HomeLoadedStateImplCopyWith<_$HomeLoadedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loadMore,
    required TResult Function(int id) favTap,
    required TResult Function(String text) search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loadMore,
    TResult? Function(int id)? favTap,
    TResult? Function(String text)? search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loadMore,
    TResult Function(int id)? favTap,
    TResult Function(String text)? search,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitEvent value) init,
    required TResult Function(LoadMoreEvent value) loadMore,
    required TResult Function(FavTapEvent value) favTap,
    required TResult Function(SearchEvent value) search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitEvent value)? init,
    TResult? Function(LoadMoreEvent value)? loadMore,
    TResult? Function(FavTapEvent value)? favTap,
    TResult? Function(SearchEvent value)? search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitEvent value)? init,
    TResult Function(LoadMoreEvent value)? loadMore,
    TResult Function(FavTapEvent value)? favTap,
    TResult Function(SearchEvent value)? search,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitEventImplCopyWith<$Res> {
  factory _$$InitEventImplCopyWith(
          _$InitEventImpl value, $Res Function(_$InitEventImpl) then) =
      __$$InitEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitEventImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$InitEventImpl>
    implements _$$InitEventImplCopyWith<$Res> {
  __$$InitEventImplCopyWithImpl(
      _$InitEventImpl _value, $Res Function(_$InitEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitEventImpl implements InitEvent {
  const _$InitEventImpl();

  @override
  String toString() {
    return 'HomeEvent.init()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loadMore,
    required TResult Function(int id) favTap,
    required TResult Function(String text) search,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loadMore,
    TResult? Function(int id)? favTap,
    TResult? Function(String text)? search,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loadMore,
    TResult Function(int id)? favTap,
    TResult Function(String text)? search,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitEvent value) init,
    required TResult Function(LoadMoreEvent value) loadMore,
    required TResult Function(FavTapEvent value) favTap,
    required TResult Function(SearchEvent value) search,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitEvent value)? init,
    TResult? Function(LoadMoreEvent value)? loadMore,
    TResult? Function(FavTapEvent value)? favTap,
    TResult? Function(SearchEvent value)? search,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitEvent value)? init,
    TResult Function(LoadMoreEvent value)? loadMore,
    TResult Function(FavTapEvent value)? favTap,
    TResult Function(SearchEvent value)? search,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class InitEvent implements HomeEvent {
  const factory InitEvent() = _$InitEventImpl;
}

/// @nodoc
abstract class _$$LoadMoreEventImplCopyWith<$Res> {
  factory _$$LoadMoreEventImplCopyWith(
          _$LoadMoreEventImpl value, $Res Function(_$LoadMoreEventImpl) then) =
      __$$LoadMoreEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadMoreEventImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$LoadMoreEventImpl>
    implements _$$LoadMoreEventImplCopyWith<$Res> {
  __$$LoadMoreEventImplCopyWithImpl(
      _$LoadMoreEventImpl _value, $Res Function(_$LoadMoreEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadMoreEventImpl implements LoadMoreEvent {
  const _$LoadMoreEventImpl();

  @override
  String toString() {
    return 'HomeEvent.loadMore()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadMoreEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loadMore,
    required TResult Function(int id) favTap,
    required TResult Function(String text) search,
  }) {
    return loadMore();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loadMore,
    TResult? Function(int id)? favTap,
    TResult? Function(String text)? search,
  }) {
    return loadMore?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loadMore,
    TResult Function(int id)? favTap,
    TResult Function(String text)? search,
    required TResult orElse(),
  }) {
    if (loadMore != null) {
      return loadMore();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitEvent value) init,
    required TResult Function(LoadMoreEvent value) loadMore,
    required TResult Function(FavTapEvent value) favTap,
    required TResult Function(SearchEvent value) search,
  }) {
    return loadMore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitEvent value)? init,
    TResult? Function(LoadMoreEvent value)? loadMore,
    TResult? Function(FavTapEvent value)? favTap,
    TResult? Function(SearchEvent value)? search,
  }) {
    return loadMore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitEvent value)? init,
    TResult Function(LoadMoreEvent value)? loadMore,
    TResult Function(FavTapEvent value)? favTap,
    TResult Function(SearchEvent value)? search,
    required TResult orElse(),
  }) {
    if (loadMore != null) {
      return loadMore(this);
    }
    return orElse();
  }
}

abstract class LoadMoreEvent implements HomeEvent {
  const factory LoadMoreEvent() = _$LoadMoreEventImpl;
}

/// @nodoc
abstract class _$$FavTapEventImplCopyWith<$Res> {
  factory _$$FavTapEventImplCopyWith(
          _$FavTapEventImpl value, $Res Function(_$FavTapEventImpl) then) =
      __$$FavTapEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$FavTapEventImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$FavTapEventImpl>
    implements _$$FavTapEventImplCopyWith<$Res> {
  __$$FavTapEventImplCopyWithImpl(
      _$FavTapEventImpl _value, $Res Function(_$FavTapEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$FavTapEventImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$FavTapEventImpl implements FavTapEvent {
  const _$FavTapEventImpl({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'HomeEvent.favTap(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavTapEventImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavTapEventImplCopyWith<_$FavTapEventImpl> get copyWith =>
      __$$FavTapEventImplCopyWithImpl<_$FavTapEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loadMore,
    required TResult Function(int id) favTap,
    required TResult Function(String text) search,
  }) {
    return favTap(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loadMore,
    TResult? Function(int id)? favTap,
    TResult? Function(String text)? search,
  }) {
    return favTap?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loadMore,
    TResult Function(int id)? favTap,
    TResult Function(String text)? search,
    required TResult orElse(),
  }) {
    if (favTap != null) {
      return favTap(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitEvent value) init,
    required TResult Function(LoadMoreEvent value) loadMore,
    required TResult Function(FavTapEvent value) favTap,
    required TResult Function(SearchEvent value) search,
  }) {
    return favTap(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitEvent value)? init,
    TResult? Function(LoadMoreEvent value)? loadMore,
    TResult? Function(FavTapEvent value)? favTap,
    TResult? Function(SearchEvent value)? search,
  }) {
    return favTap?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitEvent value)? init,
    TResult Function(LoadMoreEvent value)? loadMore,
    TResult Function(FavTapEvent value)? favTap,
    TResult Function(SearchEvent value)? search,
    required TResult orElse(),
  }) {
    if (favTap != null) {
      return favTap(this);
    }
    return orElse();
  }
}

abstract class FavTapEvent implements HomeEvent {
  const factory FavTapEvent({required final int id}) = _$FavTapEventImpl;

  int get id;
  @JsonKey(ignore: true)
  _$$FavTapEventImplCopyWith<_$FavTapEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchEventImplCopyWith<$Res> {
  factory _$$SearchEventImplCopyWith(
          _$SearchEventImpl value, $Res Function(_$SearchEventImpl) then) =
      __$$SearchEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$SearchEventImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$SearchEventImpl>
    implements _$$SearchEventImplCopyWith<$Res> {
  __$$SearchEventImplCopyWithImpl(
      _$SearchEventImpl _value, $Res Function(_$SearchEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_$SearchEventImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchEventImpl implements SearchEvent {
  const _$SearchEventImpl({required this.text});

  @override
  final String text;

  @override
  String toString() {
    return 'HomeEvent.search(text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchEventImpl &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchEventImplCopyWith<_$SearchEventImpl> get copyWith =>
      __$$SearchEventImplCopyWithImpl<_$SearchEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loadMore,
    required TResult Function(int id) favTap,
    required TResult Function(String text) search,
  }) {
    return search(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loadMore,
    TResult? Function(int id)? favTap,
    TResult? Function(String text)? search,
  }) {
    return search?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loadMore,
    TResult Function(int id)? favTap,
    TResult Function(String text)? search,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitEvent value) init,
    required TResult Function(LoadMoreEvent value) loadMore,
    required TResult Function(FavTapEvent value) favTap,
    required TResult Function(SearchEvent value) search,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitEvent value)? init,
    TResult? Function(LoadMoreEvent value)? loadMore,
    TResult? Function(FavTapEvent value)? favTap,
    TResult? Function(SearchEvent value)? search,
  }) {
    return search?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitEvent value)? init,
    TResult Function(LoadMoreEvent value)? loadMore,
    TResult Function(FavTapEvent value)? favTap,
    TResult Function(SearchEvent value)? search,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class SearchEvent implements HomeEvent {
  const factory SearchEvent({required final String text}) = _$SearchEventImpl;

  String get text;
  @JsonKey(ignore: true)
  _$$SearchEventImplCopyWith<_$SearchEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
