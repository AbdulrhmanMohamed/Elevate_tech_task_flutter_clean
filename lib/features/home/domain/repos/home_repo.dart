import 'package:dartz/dartz.dart';
import 'package:elevate_task/core/errors/failure.dart';
import 'package:elevate_task/features/home/domain/entities/product_entity.dart';

abstract class HomeRepo{

  Future<Either<Failure, List<ProductEntity>>> getAllProducts();
}