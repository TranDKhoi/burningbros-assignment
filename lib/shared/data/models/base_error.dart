import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_error.freezed.dart';

part 'base_error.g.dart';

@freezed
class ApiError with _$ApiError {
  const ApiError._();

  factory ApiError({
    String? resource,
    @JsonKey(name: 'error_code') String? errorCode,
  }) = _ApiError;

  factory ApiError.fromJson(Map<String, dynamic> json) => _$ApiErrorFromJson(json);
}

@freezed
class BaseError with _$BaseError {
  factory BaseError({
    @JsonKey(name: 'errors') List<ApiError>? errors,
  }) = _BaseError;

  factory BaseError.fromJson(Map<String, dynamic> json) => _$BaseErrorFromJson(json);
}
