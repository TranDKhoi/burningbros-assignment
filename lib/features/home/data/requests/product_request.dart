import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_request.freezed.dart';
part 'product_request.g.dart';

@freezed
class ProductRequest with _$ProductRequest {
  const factory ProductRequest({
    int? skip,
    @Default(0) limit,
  }) = _ProductRequest;

  factory ProductRequest.fromJson(Map<String, dynamic> json) =>
      _$ProductRequestFromJson(json);
}
