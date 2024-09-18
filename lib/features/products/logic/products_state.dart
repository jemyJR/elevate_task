part of 'products_cubit.dart';

sealed class ProductsState {}

final class ProductsInitial extends ProductsState {}

final class ProductsLoading extends ProductsState {}

final class ProductsSuccess extends ProductsState {
  final List<ProductModel> products;
  ProductsSuccess(this.products);
}

final class ProductsFailure extends ProductsState {
  final String error;
  ProductsFailure(this.error);
}
