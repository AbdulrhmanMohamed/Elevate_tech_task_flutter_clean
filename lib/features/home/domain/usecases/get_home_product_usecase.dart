import 'package:dartz/dartz.dart';
import 'package:elevate_task/core/errors/failure.dart';
import 'package:elevate_task/core/generic_usecase.dart';
import 'package:elevate_task/features/home/domain/entities/product_entity.dart';
import 'package:elevate_task/features/home/domain/repos/home_repo.dart';

class GetHomeProductUsecase extends GenericUsecase<List<ProductEntity>, void> {
  final HomeRepo _homeRepo;

  GetHomeProductUsecase({required HomeRepo homeRepo}) : _homeRepo = homeRepo;

  @override
  Future<Either<Failure, List<ProductEntity>>> execute([void params]) async {
    return await _homeRepo.getAllProducts();
  }
}
