import 'package:dartz/dartz.dart';
import 'package:elevate_task/core/api_service.dart';
import 'package:elevate_task/core/errors/failure.dart';
import 'package:elevate_task/core/errors/functions/save_data_to_box.dart';
import 'package:elevate_task/features/home/data/models/product_model/product_model.dart';
import 'package:elevate_task/features/home/domain/entities/product_entity.dart';

class RemoteDataSources {
  final ApiService _apiService;

  RemoteDataSources({required ApiService apiService})
      : _apiService = apiService;
  Future<Either<Failure, List<ProductEntity>>?> getAllProducts() async {
   final data = await _apiService.get("/product");
      var products = getProductList(data);
      save_data_to_box(products, "product_box");
      return right(products);
  }

  List<ProductEntity> getProductList(List<Map<String, dynamic>> data) {
    List<ProductEntity> products = [];
    (data as List<dynamic>)
        .forEach((product) => products.add(ProductModel.fromJson(product)));
    return products;
  }
}
