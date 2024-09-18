import 'package:dio/dio.dart';
import 'package:elevate_task/core/networking/api/api_consumer.dart';
import 'package:elevate_task/core/networking/api/dio_consumer.dart';
import 'package:elevate_task/features/products/data/repo/products_repo.dart';
import 'package:elevate_task/features/products/logic/products_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // Register Dio and ApiConsumer
  getIt.registerLazySingleton<Dio>(() => Dio());
  getIt
      .registerLazySingleton<ApiConsumer>(() => DioConsumer(dio: getIt<Dio>()));

  // Register the ProductsCubit
  getIt.registerLazySingleton<ProductsRepo>(() => ProductsRepo(getIt()));
  getIt.registerFactory<ProductsCubit>(() => ProductsCubit(getIt()));
}
