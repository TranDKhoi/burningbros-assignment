import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class PrefUtil {
  late Box _box;
  final _tableName = "shared_preferences";
  final _columnLang = "lang";
  final _columnTheme = "theme";

  Future<void> init() async {
    _box = await Hive.openBox(_tableName);
  }

  Future<void> saveLanguage(String langCode) {
    return _box.put(_columnLang, langCode);
  }

  String getLanguage(String defaultValue) {
    return _box.get(_columnLang, defaultValue: defaultValue);
  }

  Future<void> saveTheme(bool isDark) {
    return _box.put(_columnTheme, isDark);
  }

  bool getTheme(bool defaultValue) {
    return _box.get(_columnTheme, defaultValue: defaultValue);
  }
}
