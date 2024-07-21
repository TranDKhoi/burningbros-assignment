// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ApiError _$ApiErrorFromJson(Map<String, dynamic> json) {
  return _ApiError.fromJson(json);
}

/// @nodoc
mixin _$ApiError {
  String? get resource => throw _privateConstructorUsedError;
  @JsonKey(name: 'error_code')
  String? get errorCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiErrorCopyWith<ApiError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiErrorCopyWith<$Res> {
  factory $ApiErrorCopyWith(ApiError value, $Res Function(ApiError) then) =
      _$ApiErrorCopyWithImpl<$Res, ApiError>;
  @useResult
  $Res call({String? resource, @JsonKey(name: 'error_code') String? errorCode});
}

/// @nodoc
class _$ApiErrorCopyWithImpl<$Res, $Val extends ApiError>
    implements $ApiErrorCopyWith<$Res> {
  _$ApiErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resource = freezed,
    Object? errorCode = freezed,
  }) {
    return _then(_value.copyWith(
      resource: freezed == resource
          ? _value.resource
          : resource // ignore: cast_nullable_to_non_nullable
              as String?,
      errorCode: freezed == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApiErrorImplCopyWith<$Res>
    implements $ApiErrorCopyWith<$Res> {
  factory _$$ApiErrorImplCopyWith(
          _$ApiErrorImpl value, $Res Function(_$ApiErrorImpl) then) =
      __$$ApiErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? resource, @JsonKey(name: 'error_code') String? errorCode});
}

/// @nodoc
class __$$ApiErrorImplCopyWithImpl<$Res>
    extends _$ApiErrorCopyWithImpl<$Res, _$ApiErrorImpl>
    implements _$$ApiErrorImplCopyWith<$Res> {
  __$$ApiErrorImplCopyWithImpl(
      _$ApiErrorImpl _value, $Res Function(_$ApiErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resource = freezed,
    Object? errorCode = freezed,
  }) {
    return _then(_$ApiErrorImpl(
      resource: freezed == resource
          ? _value.resource
          : resource // ignore: cast_nullable_to_non_nullable
              as String?,
      errorCode: freezed == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiErrorImpl extends _ApiError {
  _$ApiErrorImpl({this.resource, @JsonKey(name: 'error_code') this.errorCode})
      : super._();

  factory _$ApiErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApiErrorImplFromJson(json);

  @override
  final String? resource;
  @override
  @JsonKey(name: 'error_code')
  final String? errorCode;

  @override
  String toString() {
    return 'ApiError(resource: $resource, errorCode: $errorCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiErrorImpl &&
            (identical(other.resource, resource) ||
                other.resource == resource) &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, resource, errorCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiErrorImplCopyWith<_$ApiErrorImpl> get copyWith =>
      __$$ApiErrorImplCopyWithImpl<_$ApiErrorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiErrorImplToJson(
      this,
    );
  }
}

abstract class _ApiError extends ApiError {
  factory _ApiError(
      {final String? resource,
      @JsonKey(name: 'error_code') final String? errorCode}) = _$ApiErrorImpl;
  _ApiError._() : super._();

  factory _ApiError.fromJson(Map<String, dynamic> json) =
      _$ApiErrorImpl.fromJson;

  @override
  String? get resource;
  @override
  @JsonKey(name: 'error_code')
  String? get errorCode;
  @override
  @JsonKey(ignore: true)
  _$$ApiErrorImplCopyWith<_$ApiErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BaseError _$BaseErrorFromJson(Map<String, dynamic> json) {
  return _BaseError.fromJson(json);
}

/// @nodoc
mixin _$BaseError {
  @JsonKey(name: 'errors')
  List<ApiError>? get errors => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BaseErrorCopyWith<BaseError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseErrorCopyWith<$Res> {
  factory $BaseErrorCopyWith(BaseError value, $Res Function(BaseError) then) =
      _$BaseErrorCopyWithImpl<$Res, BaseError>;
  @useResult
  $Res call({@JsonKey(name: 'errors') List<ApiError>? errors});
}

/// @nodoc
class _$BaseErrorCopyWithImpl<$Res, $Val extends BaseError>
    implements $BaseErrorCopyWith<$Res> {
  _$BaseErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errors = freezed,
  }) {
    return _then(_value.copyWith(
      errors: freezed == errors
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as List<ApiError>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BaseErrorImplCopyWith<$Res>
    implements $BaseErrorCopyWith<$Res> {
  factory _$$BaseErrorImplCopyWith(
          _$BaseErrorImpl value, $Res Function(_$BaseErrorImpl) then) =
      __$$BaseErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'errors') List<ApiError>? errors});
}

/// @nodoc
class __$$BaseErrorImplCopyWithImpl<$Res>
    extends _$BaseErrorCopyWithImpl<$Res, _$BaseErrorImpl>
    implements _$$BaseErrorImplCopyWith<$Res> {
  __$$BaseErrorImplCopyWithImpl(
      _$BaseErrorImpl _value, $Res Function(_$BaseErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errors = freezed,
  }) {
    return _then(_$BaseErrorImpl(
      errors: freezed == errors
          ? _value._errors
          : errors // ignore: cast_nullable_to_non_nullable
              as List<ApiError>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BaseErrorImpl implements _BaseError {
  _$BaseErrorImpl({@JsonKey(name: 'errors') final List<ApiError>? errors})
      : _errors = errors;

  factory _$BaseErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$BaseErrorImplFromJson(json);

  final List<ApiError>? _errors;
  @override
  @JsonKey(name: 'errors')
  List<ApiError>? get errors {
    final value = _errors;
    if (value == null) return null;
    if (_errors is EqualUnmodifiableListView) return _errors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'BaseError(errors: $errors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseErrorImpl &&
            const DeepCollectionEquality().equals(other._errors, _errors));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_errors));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseErrorImplCopyWith<_$BaseErrorImpl> get copyWith =>
      __$$BaseErrorImplCopyWithImpl<_$BaseErrorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BaseErrorImplToJson(
      this,
    );
  }
}

abstract class _BaseError implements BaseError {
  factory _BaseError({@JsonKey(name: 'errors') final List<ApiError>? errors}) =
      _$BaseErrorImpl;

  factory _BaseError.fromJson(Map<String, dynamic> json) =
      _$BaseErrorImpl.fromJson;

  @override
  @JsonKey(name: 'errors')
  List<ApiError>? get errors;
  @override
  @JsonKey(ignore: true)
  _$$BaseErrorImplCopyWith<_$BaseErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
