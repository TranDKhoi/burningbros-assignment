import 'package:bb_assignment/features/home/data/responses/product_response.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class HomeStorage {
  late Box _box;
  final _tableName = "home_storage";

  final _columnProduct = "products";
  final _columnFav = "fav";

  Future<void> init() async {
    Hive.registerAdapter(ProductModelAdapter());

    _box = await Hive.openBox(_tableName);
  }

  Future<void> saveCacheData(List<ProductModel> products) {
    return _box.put(_columnProduct, products);
  }

  Future<List<ProductModel>> getCachedData() async {
    List<ProductModel> products = List<ProductModel>.from(
      _box.get(_columnProduct, defaultValue: <ProductModel>[]),
    );

    return products;
  }

  Future<List<int>> saveFavProduct(int id) async {
    var currentList = await getFavProduct();
    if (!currentList.contains(id)) {
      currentList.add(id);
    } else {
      currentList.remove(id);
    }
    await _box.put(_columnFav, currentList);
    return currentList;
  }

  Future<List<int>> getFavProduct() async {
    List<int> products = List<int>.from(
      _box.get(_columnFav, defaultValue: <int>[]),
    );

    return products;
  }
}
