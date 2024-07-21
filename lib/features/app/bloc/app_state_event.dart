import 'package:bb_assignment/utils/language/language_util.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_state_event.freezed.dart';

part 'app_state_event.g.dart';

@Freezed(equal: true)
class AppState with _$AppState {
  const factory AppState({
    @Default(LanguageUtil.defaultCode) String currentLangCode,
    @Default(false) bool isDark,
  }) = _AppState;

  factory AppState.fromJson(Map<String, dynamic> json) => _$AppStateFromJson(json);
}

@freezed
class AppEvent with _$AppEvent {
  const factory AppEvent.init() = InitEvent;

  const factory AppEvent.changeLanguage() = ChangeLanguageEvent;

  const factory AppEvent.changeThemeMode() = ChangeThemeModeEvent;
}
