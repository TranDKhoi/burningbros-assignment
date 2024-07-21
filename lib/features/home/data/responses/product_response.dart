import 'package:bb_assignment/configs/const/images.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'product_response.freezed.dart';
part 'product_response.g.dart';

@freezed
class ProductResponse with _$ProductResponse {
  const factory ProductResponse({
    @Default([]) List<ProductModel> products,
    @Default(0) int total,
    @Default(0) int skip,
    @Default(0) int limit,
  }) = _ProductResponse;

  factory ProductResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductResponseFromJson(json);
}

@freezed
@HiveType(typeId: 0)
class ProductModel with _$ProductModel {
  const factory ProductModel({
    @HiveField(0) @Default(0) int id,
    @HiveField(1) @Default("") String title,
    @HiveField(2) @Default("") String description,
    @HiveField(3) @Default("") String category,
    @HiveField(4) @Default(0) double price,
    @HiveField(5) @Default(0) double discountPercentage,
    @HiveField(6) @Default(0) double rating,
    @HiveField(7) @Default(0) int stock,
    @HiveField(8) @Default([]) List<String> tags,
    @HiveField(9) @Default("") String brand,
    @HiveField(10) @Default("") String sku,
    @HiveField(11) @Default(0) int? weight,
    @HiveField(12) @Default("") String warrantyInformation,
    @HiveField(13) @Default("") String shippingInformation,
    @HiveField(14) @Default("") String availabilityStatus,
    @HiveField(15) @Default("") String returnPolicy,
    @HiveField(16) @Default(0) int? minimumOrderQuantity,
    @HiveField(17) @Default([]) List<String> images,
    @HiveField(18) @Default(ImageConst.nullImage) String thumbnail,
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);
}
