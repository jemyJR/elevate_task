import 'package:elevate_task/core/di/dependency_injection.dart';
import 'package:elevate_task/core/routing/routes.dart';
import 'package:elevate_task/features/products/logic/products_cubit.dart';
import 'package:elevate_task/features/products/ui/products_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.productsScreen:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => getIt<ProductsCubit>()..getProducts(),
            child: const ProductsScreen(),
          ),
        );
    }
    return null;
  }
}
