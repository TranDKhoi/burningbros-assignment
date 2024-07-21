import 'package:bb_assignment/utils/language/language_util.dart';

extension Translation on String {
  /// [tr] is short-hand of translate (inspired by GetX)
  String get tr => LanguageUtil.getTranslatedContentByKey(this);
}
