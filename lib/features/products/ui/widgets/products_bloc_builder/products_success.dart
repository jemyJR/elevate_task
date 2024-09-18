import 'package:elevate_task/features/products/data/models/product_model.dart';
import 'package:elevate_task/features/products/ui/widgets/product_card.dart';
import 'package:flutter/material.dart';

class ProductsSuccessWidget extends StatelessWidget {
  const ProductsSuccessWidget({
    super.key,
    required this.itemCount,
    required this.products,
  });
  final int itemCount;
  final List<ProductModel> products;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.7,
      ),
      itemCount: itemCount,
      itemBuilder: (context, index) {
        return ProductCard(product: products[index]);
      },
    );
  }
}
