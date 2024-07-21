import 'package:bb_assignment/features/home/data/requests/product_request.dart';
import 'package:bb_assignment/features/home/data/requests/search_request.dart';
import 'package:bb_assignment/features/home/data/responses/product_response.dart';
import 'package:bb_assignment/shared/data/models/response_handler.dart';

abstract class HomeRepository {
  Future<ResponseHandler<ProductResponse>> getProduct(ProductRequest params);

  Future<ResponseHandler<ProductResponse>> searchProduct(SearchRequest params);

  Future<List<ProductModel>> getCachedData();

  Future<void> saveCacheData(List<ProductModel> p);

  Future<List<int>> onProductFavTap(int id);

  Future<List<int>> getFavProduct();
}
