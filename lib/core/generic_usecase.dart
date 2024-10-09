import 'package:dartz/dartz.dart';
import 'package:elevate_task/core/errors/failure.dart';

abstract class GenericUsecase<Type,Params> {

 Future<Either<Failure,Type>> execute([Params params]);

}