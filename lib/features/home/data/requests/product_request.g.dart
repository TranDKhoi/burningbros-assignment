// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductRequestImpl _$$ProductRequestImplFromJson(Map<String, dynamic> json) =>
    _$ProductRequestImpl(
      skip: (json['skip'] as num?)?.toInt(),
      limit: json['limit'] ?? 0,
    );

Map<String, dynamic> _$$ProductRequestImplToJson(
        _$ProductRequestImpl instance) =>
    <String, dynamic>{
      'skip': instance.skip,
      'limit': instance.limit,
    };
