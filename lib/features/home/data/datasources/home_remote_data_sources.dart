import 'package:elevate_task/core/utils/api_service.dart';
import 'package:elevate_task/core/functions/save_data_to_box.dart';
import 'package:elevate_task/features/home/data/models/product_model/product_model.dart';
import 'package:elevate_task/features/home/domain/entities/product_entity.dart';

class HomeRemoteDataSource {
  final ApiService _apiService;

  HomeRemoteDataSource({required ApiService apiService})
      : _apiService = apiService;
  Future<List<ProductEntity>>getAllProducts() async {
    final data = await _apiService.get("/products");
      var products = getProductList(data);
      save_data_to_box(products, "product_box");
      return products;
  }

  List<ProductEntity> getProductList(List<dynamic> data) {
    List<ProductEntity> products = [];
    (data )
        .forEach((product) => products.add(ProductModel.fromJson(product)));
    return products;
  }
}
