// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchRequestImpl _$$SearchRequestImplFromJson(Map<String, dynamic> json) =>
    _$SearchRequestImpl(
      skip: (json['skip'] as num?)?.toInt(),
      limit: json['limit'] ?? 0,
      q: json['q'] as String?,
    );

Map<String, dynamic> _$$SearchRequestImplToJson(_$SearchRequestImpl instance) =>
    <String, dynamic>{
      'skip': instance.skip,
      'limit': instance.limit,
      'q': instance.q,
    };
