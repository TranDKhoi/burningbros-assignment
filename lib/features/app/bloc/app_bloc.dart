import 'dart:async';

import 'package:bb_assignment/features/app/bloc/app_state_event.dart';
import 'package:bb_assignment/utils/language/language_util.dart';
import 'package:bb_assignment/utils/preferences/pref_util.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class AppBloc extends Bloc<AppEvent, AppState> {
  final PrefUtil _pref;

  /// MAP EVENTS TO STATES
  AppBloc(this._pref) : super(const AppState()) {
    on<InitEvent>(_onInitEvent);
    on<ChangeLanguageEvent>(_onChangeLanguageEvent);
    on<ChangeThemeModeEvent>(_onChangeThemeModeEvent);
  }

  Future<void> _onInitEvent(InitEvent event, Emitter<AppState> emit) async {
    final (langCode, isDark) = await (
      updateOldLanguage(),
      updateOldThemeMode(),
    ).wait;

    emit(
      state.copyWith(
        isDark: isDark,
        currentLangCode: langCode,
      ),
    );
  }

  Future<String> updateOldLanguage() async {
    return LanguageUtil.fetchAndSetLocalLanguage();
  }

  Future<bool> updateOldThemeMode() async {
    return _pref.getTheme(state.isDark);
  }

  Future<void> _onChangeLanguageEvent(ChangeLanguageEvent event, Emitter<AppState> emit) async {
    if (state.currentLangCode == "en") {
      LanguageUtil.changeLanguage("vi");
    } else {
      LanguageUtil.changeLanguage("en");
    }

    emit(state.copyWith(currentLangCode: LanguageUtil.currentLanguage));
  }

  Future<void> _onChangeThemeModeEvent(ChangeThemeModeEvent event, Emitter<AppState> emit) async {
    var newTheme = !state.isDark;
    emit(state.copyWith(isDark: newTheme));
    await _pref.saveTheme(newTheme);
  }
}
