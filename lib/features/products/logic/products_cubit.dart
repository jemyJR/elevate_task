import 'package:elevate_task/features/products/data/models/product_model.dart';
import 'package:elevate_task/features/products/data/repo/products_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'products_state.dart';

class ProductsCubit extends Cubit<ProductsState> {
  ProductsCubit(this.productsRepo) : super(ProductsInitial());
  final ProductsRepo productsRepo;

  //! get products
  Future<void> getProducts() async {
    emit(ProductsLoading());
    final products = await productsRepo.getProducts();
    products.fold(
      (error) => emit(ProductsFailure(error)),
      (products) => emit(ProductsSuccess(products)),
    );
  }
}
