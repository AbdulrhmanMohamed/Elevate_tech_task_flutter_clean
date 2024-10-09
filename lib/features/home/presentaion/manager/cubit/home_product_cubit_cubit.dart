import 'package:bloc/bloc.dart';
import 'package:elevate_task/features/home/domain/entities/product_entity.dart';
import 'package:elevate_task/features/home/domain/usecases/get_home_product_usecase.dart';
import 'package:meta/meta.dart';

part 'home_product_cubit_state.dart';

class HomeProductCubitCubit extends Cubit<HomeProductCubitState> {
  final GetHomeProductUsecase _getHomeProductUsecase;
  HomeProductCubitCubit(this._getHomeProductUsecase)
      : super(HomeProductCubitInitial());

  emit(HomeProductCubitLoading);
  getHomeProduct() async {
    var result = await _getHomeProductUsecase.execute();
    result.fold((failure){
    emit(HomeProductCubitFailure(failure.message));
    }, (products){
      emit(HomeProductCubitSuccess(products));
    });
  }
}
