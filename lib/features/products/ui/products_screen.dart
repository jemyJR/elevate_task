import 'package:elevate_task/core/constants/app_constants.dart';
import 'package:flutter/material.dart';

import 'widgets/products_bloc_builder/products_bloc_builder.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: AppConstants.defaultPadding,
        child: const ProductsBlocBuilder(),
      ),
    );
  }
}
