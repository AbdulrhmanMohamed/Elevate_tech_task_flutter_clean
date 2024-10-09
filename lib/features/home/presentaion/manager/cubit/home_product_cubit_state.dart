part of 'home_product_cubit.dart';

@immutable
sealed class HomeProductCubitState {}

final class HomeProductCubitInitial extends HomeProductCubitState {}
final class HomeProductCubitLoading extends HomeProductCubitState {}
final class HomeProductCubitFailure extends HomeProductCubitState {
  final String errorMessage;

  HomeProductCubitFailure(this.errorMessage);
}
final class HomeProductCubitSuccess extends HomeProductCubitState {
  final List<ProductEntity>products;

  HomeProductCubitSuccess(this.products);
}
