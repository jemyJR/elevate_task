import 'package:elevate_task/core/constants/app_constants.dart';
import 'package:elevate_task/features/products/ui/widgets/product_card.dart';
import 'package:flutter/material.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: AppConstants.defaultPadding,
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.7,
          ),
          itemBuilder: (context, index) {
            return const ProductCard();
          },
        ),
      ),
    );
  }
}
