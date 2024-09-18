import 'package:elevate_task/core/constants/app_colors.dart';
import 'package:elevate_task/features/products/data/models/product_model.dart';
import 'package:elevate_task/features/products/data/models/rating_model.dart';
import 'package:elevate_task/features/products/ui/widgets/products_bloc_builder/products_success.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ProductsLoadingShimmer extends StatelessWidget {
  const ProductsLoadingShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: AppColors.black.withOpacity(0.1),
      highlightColor: AppColors.lightGrey,
      child: ProductsSuccessWidget(
        itemCount: 6,
        products: List.generate(6, (index) => dummyProduct),
      ),
    );
  }
}

// dummy product  data
ProductModel dummyProduct = ProductModel(
  id: 1,
  title: "Fjallraven - Foldsack No. 1 Backpack, Fits 15 Laptops",
  description: "Your perfect pack for everyday use and walks in the forest. "
      "Stash your laptop (up to 15 inches) in the padded sleeve, your everyday.",
  price: 109.95,
  image: "https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg",
  rating: RatingModel(
    rate: 3.9,
    count: 120,
  ),
);
