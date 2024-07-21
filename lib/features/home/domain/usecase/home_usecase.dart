import 'package:bb_assignment/features/home/data/repositories/home_repository.dart';
import 'package:bb_assignment/features/home/data/requests/product_request.dart';
import 'package:bb_assignment/features/home/data/requests/search_request.dart';
import 'package:bb_assignment/features/home/data/responses/product_response.dart';
import 'package:bb_assignment/shared/data/models/response_handler.dart';
import 'package:injectable/injectable.dart';

abstract class HomeUseCase {
  Future<ResponseHandler<ProductResponse>> getProducts({int skip, int limit});

  Future<ResponseHandler<ProductResponse>> searchProduct({
    int skip,
    int limit,
    String query,
  });

  Future<void> saveCacheData(List<ProductModel> p);

  Future<List<ProductModel>> getCachedData();

  Future<List<int>> onProductFavTap({required int id});

  Future<List<int>> getFavProduct();
}

@Injectable(as: HomeUseCase)
class HomeUseCaseImpl implements HomeUseCase {
  const HomeUseCaseImpl(this._repo);

  final HomeRepository _repo;

  @override
  Future<ResponseHandler<ProductResponse>> getProducts(
      {int skip = 0, int limit = 0}) {
    var param = ProductRequest(skip: skip, limit: limit);
    return _repo.getProduct(param);
  }

  @override
  Future<ResponseHandler<ProductResponse>> searchProduct(
      {int skip = 0, int limit = 0, String query = ""}) {
    SearchRequest params = SearchRequest(
      limit: limit,
      skip: skip,
      q: query,
    );
    return _repo.searchProduct(params);
  }

  @override
  Future<List<ProductModel>> getCachedData() {
    return _repo.getCachedData();
  }

  @override
  Future<void> saveCacheData(List<ProductModel> p) {
    return _repo.saveCacheData(p);
  }

  @override
  Future<List<int>> onProductFavTap({required int id}) {
    return _repo.onProductFavTap(id);
  }

  @override
  Future<List<int>> getFavProduct() {
    return _repo.getFavProduct();
  }
}
