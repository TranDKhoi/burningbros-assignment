// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_state_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AppState _$AppStateFromJson(Map<String, dynamic> json) {
  return _AppState.fromJson(json);
}

/// @nodoc
mixin _$AppState {
  String get currentLangCode => throw _privateConstructorUsedError;
  bool get isDark => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppStateCopyWith<AppState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res, AppState>;
  @useResult
  $Res call({String currentLangCode, bool isDark});
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res, $Val extends AppState>
    implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentLangCode = null,
    Object? isDark = null,
  }) {
    return _then(_value.copyWith(
      currentLangCode: null == currentLangCode
          ? _value.currentLangCode
          : currentLangCode // ignore: cast_nullable_to_non_nullable
              as String,
      isDark: null == isDark
          ? _value.isDark
          : isDark // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppStateImplCopyWith<$Res>
    implements $AppStateCopyWith<$Res> {
  factory _$$AppStateImplCopyWith(
          _$AppStateImpl value, $Res Function(_$AppStateImpl) then) =
      __$$AppStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String currentLangCode, bool isDark});
}

/// @nodoc
class __$$AppStateImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$AppStateImpl>
    implements _$$AppStateImplCopyWith<$Res> {
  __$$AppStateImplCopyWithImpl(
      _$AppStateImpl _value, $Res Function(_$AppStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentLangCode = null,
    Object? isDark = null,
  }) {
    return _then(_$AppStateImpl(
      currentLangCode: null == currentLangCode
          ? _value.currentLangCode
          : currentLangCode // ignore: cast_nullable_to_non_nullable
              as String,
      isDark: null == isDark
          ? _value.isDark
          : isDark // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppStateImpl implements _AppState {
  const _$AppStateImpl(
      {this.currentLangCode = LanguageUtil.defaultCode, this.isDark = false});

  factory _$AppStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppStateImplFromJson(json);

  @override
  @JsonKey()
  final String currentLangCode;
  @override
  @JsonKey()
  final bool isDark;

  @override
  String toString() {
    return 'AppState(currentLangCode: $currentLangCode, isDark: $isDark)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppStateImpl &&
            (identical(other.currentLangCode, currentLangCode) ||
                other.currentLangCode == currentLangCode) &&
            (identical(other.isDark, isDark) || other.isDark == isDark));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, currentLangCode, isDark);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppStateImplCopyWith<_$AppStateImpl> get copyWith =>
      __$$AppStateImplCopyWithImpl<_$AppStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppStateImplToJson(
      this,
    );
  }
}

abstract class _AppState implements AppState {
  const factory _AppState({final String currentLangCode, final bool isDark}) =
      _$AppStateImpl;

  factory _AppState.fromJson(Map<String, dynamic> json) =
      _$AppStateImpl.fromJson;

  @override
  String get currentLangCode;
  @override
  bool get isDark;
  @override
  @JsonKey(ignore: true)
  _$$AppStateImplCopyWith<_$AppStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AppEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() changeLanguage,
    required TResult Function() changeThemeMode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? changeLanguage,
    TResult? Function()? changeThemeMode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? changeLanguage,
    TResult Function()? changeThemeMode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitEvent value) init,
    required TResult Function(ChangeLanguageEvent value) changeLanguage,
    required TResult Function(ChangeThemeModeEvent value) changeThemeMode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitEvent value)? init,
    TResult? Function(ChangeLanguageEvent value)? changeLanguage,
    TResult? Function(ChangeThemeModeEvent value)? changeThemeMode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitEvent value)? init,
    TResult Function(ChangeLanguageEvent value)? changeLanguage,
    TResult Function(ChangeThemeModeEvent value)? changeThemeMode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppEventCopyWith<$Res> {
  factory $AppEventCopyWith(AppEvent value, $Res Function(AppEvent) then) =
      _$AppEventCopyWithImpl<$Res, AppEvent>;
}

/// @nodoc
class _$AppEventCopyWithImpl<$Res, $Val extends AppEvent>
    implements $AppEventCopyWith<$Res> {
  _$AppEventCopyWithImpl(this._value, this._then);

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
    extends _$AppEventCopyWithImpl<$Res, _$InitEventImpl>
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
    return 'AppEvent.init()';
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
    required TResult Function() changeLanguage,
    required TResult Function() changeThemeMode,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? changeLanguage,
    TResult? Function()? changeThemeMode,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? changeLanguage,
    TResult Function()? changeThemeMode,
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
    required TResult Function(ChangeLanguageEvent value) changeLanguage,
    required TResult Function(ChangeThemeModeEvent value) changeThemeMode,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitEvent value)? init,
    TResult? Function(ChangeLanguageEvent value)? changeLanguage,
    TResult? Function(ChangeThemeModeEvent value)? changeThemeMode,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitEvent value)? init,
    TResult Function(ChangeLanguageEvent value)? changeLanguage,
    TResult Function(ChangeThemeModeEvent value)? changeThemeMode,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class InitEvent implements AppEvent {
  const factory InitEvent() = _$InitEventImpl;
}

/// @nodoc
abstract class _$$ChangeLanguageEventImplCopyWith<$Res> {
  factory _$$ChangeLanguageEventImplCopyWith(_$ChangeLanguageEventImpl value,
          $Res Function(_$ChangeLanguageEventImpl) then) =
      __$$ChangeLanguageEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChangeLanguageEventImplCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res, _$ChangeLanguageEventImpl>
    implements _$$ChangeLanguageEventImplCopyWith<$Res> {
  __$$ChangeLanguageEventImplCopyWithImpl(_$ChangeLanguageEventImpl _value,
      $Res Function(_$ChangeLanguageEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ChangeLanguageEventImpl implements ChangeLanguageEvent {
  const _$ChangeLanguageEventImpl();

  @override
  String toString() {
    return 'AppEvent.changeLanguage()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeLanguageEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() changeLanguage,
    required TResult Function() changeThemeMode,
  }) {
    return changeLanguage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? changeLanguage,
    TResult? Function()? changeThemeMode,
  }) {
    return changeLanguage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? changeLanguage,
    TResult Function()? changeThemeMode,
    required TResult orElse(),
  }) {
    if (changeLanguage != null) {
      return changeLanguage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitEvent value) init,
    required TResult Function(ChangeLanguageEvent value) changeLanguage,
    required TResult Function(ChangeThemeModeEvent value) changeThemeMode,
  }) {
    return changeLanguage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitEvent value)? init,
    TResult? Function(ChangeLanguageEvent value)? changeLanguage,
    TResult? Function(ChangeThemeModeEvent value)? changeThemeMode,
  }) {
    return changeLanguage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitEvent value)? init,
    TResult Function(ChangeLanguageEvent value)? changeLanguage,
    TResult Function(ChangeThemeModeEvent value)? changeThemeMode,
    required TResult orElse(),
  }) {
    if (changeLanguage != null) {
      return changeLanguage(this);
    }
    return orElse();
  }
}

abstract class ChangeLanguageEvent implements AppEvent {
  const factory ChangeLanguageEvent() = _$ChangeLanguageEventImpl;
}

/// @nodoc
abstract class _$$ChangeThemeModeEventImplCopyWith<$Res> {
  factory _$$ChangeThemeModeEventImplCopyWith(_$ChangeThemeModeEventImpl value,
          $Res Function(_$ChangeThemeModeEventImpl) then) =
      __$$ChangeThemeModeEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChangeThemeModeEventImplCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res, _$ChangeThemeModeEventImpl>
    implements _$$ChangeThemeModeEventImplCopyWith<$Res> {
  __$$ChangeThemeModeEventImplCopyWithImpl(_$ChangeThemeModeEventImpl _value,
      $Res Function(_$ChangeThemeModeEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ChangeThemeModeEventImpl implements ChangeThemeModeEvent {
  const _$ChangeThemeModeEventImpl();

  @override
  String toString() {
    return 'AppEvent.changeThemeMode()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeThemeModeEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() changeLanguage,
    required TResult Function() changeThemeMode,
  }) {
    return changeThemeMode();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? changeLanguage,
    TResult? Function()? changeThemeMode,
  }) {
    return changeThemeMode?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? changeLanguage,
    TResult Function()? changeThemeMode,
    required TResult orElse(),
  }) {
    if (changeThemeMode != null) {
      return changeThemeMode();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitEvent value) init,
    required TResult Function(ChangeLanguageEvent value) changeLanguage,
    required TResult Function(ChangeThemeModeEvent value) changeThemeMode,
  }) {
    return changeThemeMode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitEvent value)? init,
    TResult? Function(ChangeLanguageEvent value)? changeLanguage,
    TResult? Function(ChangeThemeModeEvent value)? changeThemeMode,
  }) {
    return changeThemeMode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitEvent value)? init,
    TResult Function(ChangeLanguageEvent value)? changeLanguage,
    TResult Function(ChangeThemeModeEvent value)? changeThemeMode,
    required TResult orElse(),
  }) {
    if (changeThemeMode != null) {
      return changeThemeMode(this);
    }
    return orElse();
  }
}

abstract class ChangeThemeModeEvent implements AppEvent {
  const factory ChangeThemeModeEvent() = _$ChangeThemeModeEventImpl;
}
