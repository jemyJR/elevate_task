import 'package:elevate_task/core/routing/routes.dart';
import 'package:elevate_task/features/products/ui/products_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.productsScreen:
        return MaterialPageRoute(
          builder: (context) => const ProductsScreen(),
        );
    }
    return null;
  }
}
