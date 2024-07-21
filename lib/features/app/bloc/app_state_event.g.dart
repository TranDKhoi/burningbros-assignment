// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_state_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppStateImpl _$$AppStateImplFromJson(Map<String, dynamic> json) =>
    _$AppStateImpl(
      currentLangCode:
          json['currentLangCode'] as String? ?? LanguageUtil.defaultCode,
      isDark: json['isDark'] as bool? ?? false,
    );

Map<String, dynamic> _$$AppStateImplToJson(_$AppStateImpl instance) =>
    <String, dynamic>{
      'currentLangCode': instance.currentLangCode,
      'isDark': instance.isDark,
    };
