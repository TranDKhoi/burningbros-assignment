import 'package:bb_assignment/configs/endpoints/endpoint.dart';
import 'package:bb_assignment/features/home/data/requests/product_request.dart';
import 'package:bb_assignment/features/home/data/requests/search_request.dart';
import 'package:bb_assignment/features/home/data/responses/product_response.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';

part 'home_api.g.dart';

@RestApi()
abstract class HomeApi {
  factory HomeApi(Dio dio, {String baseUrl}) = _HomeApi;

  @GET(EndPoint.baseUrl)
  Future<ProductResponse> getProduct(@Queries() ProductRequest params);

  @GET(EndPoint.searchProduct)
  Future<ProductResponse> searchProduct(@Queries() SearchRequest params);
}
