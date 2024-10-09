import 'package:dartz/dartz.dart';
import 'package:elevate_task/core/errors/failure.dart';
import 'package:elevate_task/features/home/data/datasources/home_local_data_source.dart';
import 'package:elevate_task/features/home/data/datasources/home_remote_data_sources.dart';
import 'package:elevate_task/features/home/domain/entities/product_entity.dart';
import 'package:elevate_task/features/home/domain/repos/home_repo.dart';

class HomeRepoImpl extends HomeRepo {
  final HomeLocalDataSource _localDataSource;
  final HomeRemoteDataSource _remoteDataSource;

  HomeRepoImpl(
      {required HomeLocalDataSource localDataSource,
      required HomeRemoteDataSource remoteDataSource})
      : _localDataSource = localDataSource,
        _remoteDataSource = remoteDataSource;

  @override
  Future<Either<Failure, List<ProductEntity>>> getAllProducts() async{
    // TODO: implement getAllProducts
    try {
  var localdata= _localDataSource.getHomeProducts();
  if(localdata.isNotEmpty)return right(localdata);
  var remotedata=await _remoteDataSource.getAllProducts();
  return right(remotedata);
} on Exception catch (e) {
  return left(Failure(message: e.toString()));
}
  }
}
