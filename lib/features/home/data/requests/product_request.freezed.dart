// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductRequest _$ProductRequestFromJson(Map<String, dynamic> json) {
  return _ProductRequest.fromJson(json);
}

/// @nodoc
mixin _$ProductRequest {
  int? get skip => throw _privateConstructorUsedError;
  dynamic get limit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductRequestCopyWith<ProductRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductRequestCopyWith<$Res> {
  factory $ProductRequestCopyWith(
          ProductRequest value, $Res Function(ProductRequest) then) =
      _$ProductRequestCopyWithImpl<$Res, ProductRequest>;
  @useResult
  $Res call({int? skip, dynamic limit});
}

/// @nodoc
class _$ProductRequestCopyWithImpl<$Res, $Val extends ProductRequest>
    implements $ProductRequestCopyWith<$Res> {
  _$ProductRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? skip = freezed,
    Object? limit = freezed,
  }) {
    return _then(_value.copyWith(
      skip: freezed == skip
          ? _value.skip
          : skip // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductRequestImplCopyWith<$Res>
    implements $ProductRequestCopyWith<$Res> {
  factory _$$ProductRequestImplCopyWith(_$ProductRequestImpl value,
          $Res Function(_$ProductRequestImpl) then) =
      __$$ProductRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? skip, dynamic limit});
}

/// @nodoc
class __$$ProductRequestImplCopyWithImpl<$Res>
    extends _$ProductRequestCopyWithImpl<$Res, _$ProductRequestImpl>
    implements _$$ProductRequestImplCopyWith<$Res> {
  __$$ProductRequestImplCopyWithImpl(
      _$ProductRequestImpl _value, $Res Function(_$ProductRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? skip = freezed,
    Object? limit = freezed,
  }) {
    return _then(_$ProductRequestImpl(
      skip: freezed == skip
          ? _value.skip
          : skip // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: freezed == limit ? _value.limit! : limit,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductRequestImpl implements _ProductRequest {
  const _$ProductRequestImpl({this.skip, this.limit = 0});

  factory _$ProductRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductRequestImplFromJson(json);

  @override
  final int? skip;
  @override
  @JsonKey()
  final dynamic limit;

  @override
  String toString() {
    return 'ProductRequest(skip: $skip, limit: $limit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductRequestImpl &&
            (identical(other.skip, skip) || other.skip == skip) &&
            const DeepCollectionEquality().equals(other.limit, limit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, skip, const DeepCollectionEquality().hash(limit));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductRequestImplCopyWith<_$ProductRequestImpl> get copyWith =>
      __$$ProductRequestImplCopyWithImpl<_$ProductRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductRequestImplToJson(
      this,
    );
  }
}

abstract class _ProductRequest implements ProductRequest {
  const factory _ProductRequest({final int? skip, final dynamic limit}) =
      _$ProductRequestImpl;

  factory _ProductRequest.fromJson(Map<String, dynamic> json) =
      _$ProductRequestImpl.fromJson;

  @override
  int? get skip;
  @override
  dynamic get limit;
  @override
  @JsonKey(ignore: true)
  _$$ProductRequestImplCopyWith<_$ProductRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
