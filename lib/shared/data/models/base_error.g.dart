// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_error.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ApiErrorImpl _$$ApiErrorImplFromJson(Map<String, dynamic> json) =>
    _$ApiErrorImpl(
      resource: json['resource'] as String?,
      errorCode: json['error_code'] as String?,
    );

Map<String, dynamic> _$$ApiErrorImplToJson(_$ApiErrorImpl instance) =>
    <String, dynamic>{
      'resource': instance.resource,
      'error_code': instance.errorCode,
    };

_$BaseErrorImpl _$$BaseErrorImplFromJson(Map<String, dynamic> json) =>
    _$BaseErrorImpl(
      errors: (json['errors'] as List<dynamic>?)
          ?.map((e) => ApiError.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$BaseErrorImplToJson(_$BaseErrorImpl instance) =>
    <String, dynamic>{
      'errors': instance.errors,
    };
