import 'package:dio/dio.dart';
import 'package:elevate_task/core/utils/api_service.dart';
import 'package:elevate_task/features/home/data/datasources/home_local_data_source.dart';
import 'package:elevate_task/features/home/data/datasources/home_remote_data_sources.dart';
import 'package:elevate_task/features/home/data/repos/home_repo_impl.dart';
import 'package:get_it/get_it.dart';

final get_it= GetIt.instance;

void setup_service_locator(){

get_it.registerSingleton<HomeRepoImpl>(HomeRepoImpl(
            localDataSource: HomeLocalDataSource(),
            remoteDataSource: HomeRemoteDataSource(
              apiService: ApiService(
                dio: Dio(),
              ),
            ),
          ),);

}