import 'package:dartz/dartz.dart';
import 'package:elevate_task/core/networking/api/api_consumer.dart';
import 'package:elevate_task/core/networking/api/api_endpoints.dart';
import 'package:elevate_task/core/networking/errors/error_handle_exeptions.dart';
import 'package:elevate_task/features/products/data/models/product_model.dart';

class ProductsRepo {
  final ApiConsumer api;
  ProductsRepo(this.api);

  //! get products
  Future<Either<String, List<ProductModel>>> getProducts() async {
    try {
      final response = await api.get(ApiEndPoints.products);
      final products =
          (response as List).map((e) => ProductModel.fromJson(e)).toList();
      return Right(products);
    } on ServerException catch (e) {
      return Left(e.errorModel.errorMessage!);
    }
  }
}
