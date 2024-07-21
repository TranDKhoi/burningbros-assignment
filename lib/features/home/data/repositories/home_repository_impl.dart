import 'package:bb_assignment/configs/di/injection.dart';
import 'package:bb_assignment/configs/network/dio_client.dart';
import 'package:bb_assignment/features/home/data/providers/api/home_api.dart';
import 'package:bb_assignment/features/home/data/providers/local/home_storage.dart';
import 'package:bb_assignment/features/home/data/repositories/home_repository.dart';
import 'package:bb_assignment/features/home/data/requests/product_request.dart';
import 'package:bb_assignment/features/home/data/requests/search_request.dart';
import 'package:bb_assignment/features/home/data/responses/product_response.dart';
import 'package:bb_assignment/shared/data/models/response_handler.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: HomeRepository)
class HomeRepositoryImpl implements HomeRepository {
  final HomeApi _homeApi = HomeApi(getIt<DioClient>().dio);
  final HomeStorage _homeLocal = getIt<HomeStorage>();

  @override
  Future<ResponseHandler<ProductResponse>> getProduct(ProductRequest params) {
    return ResponseHandler.guardFuture(() => _homeApi.getProduct(params));
  }

  @override
  Future<ResponseHandler<ProductResponse>> searchProduct(SearchRequest params) {
    return ResponseHandler.guardFuture(() => _homeApi.searchProduct(params));
  }

  @override
  Future<List<ProductModel>> getCachedData() async {
    return _homeLocal.getCachedData();
  }

  @override
  Future<void> saveCacheData(List<ProductModel> p) async {
    return _homeLocal.saveCacheData(p);
  }

  @override
  Future<List<int>> onProductFavTap(int id) {
    return _homeLocal.saveFavProduct(id);
  }

  @override
  Future<List<int>> getFavProduct() {
    return _homeLocal.getFavProduct();
  }
}
