import 'dart:ui';

import 'package:bb_assignment/configs/di/injection.dart';
import 'package:bb_assignment/configs/language/en.dart';
import 'package:bb_assignment/configs/language/vi.dart';
import 'package:bb_assignment/utils/preferences/pref_util.dart';

class LanguageUtil {
  static const String defaultCode = "en";

  static String currentLanguage = supportedLocales.first.languageCode;

  static List<Locale> supportedLocales = const <Locale>[
    Locale('en'),
    Locale('vi'),
  ];

  static final Map<String, Map<String, String>> _allLanguageDataMap = {
    'en': enLang,
    'vi': viLang,
  };

  static String getTranslatedContentByKey(String key) =>
      _allLanguageDataMap[currentLanguage]?[key] ?? key;

  static String _getSavedLanguage() {
    var langCode = getIt<PrefUtil>().getLanguage(defaultCode);

    var found = supportedLocales.any((l) => l.languageCode == langCode);
    if (!found) {
      langCode = defaultCode;
    }

    return langCode;
  }

  static void _saveLanguage(String langCode) {
    getIt<PrefUtil>().saveLanguage(langCode);
  }

  /// called when user confirm to change language (switch)
  static String changeLanguage(String langCode) {
    var found = supportedLocales.any((l) => l.languageCode == langCode);

    if (!found) {
      langCode = defaultCode;
    }
    _saveLanguage(langCode);

    currentLanguage = langCode;

    return langCode;
  }

  /// called when open app -> so app can update to last setting language
  static String fetchAndSetLocalLanguage() {
    var oldLang = _getSavedLanguage();
    currentLanguage = oldLang;
    return oldLang;
  }
}
