import 'package:elevate_task/core/constants/app_colors.dart';
import 'package:elevate_task/core/constants/app_constants.dart';
import 'package:elevate_task/features/products/data/models/product_model.dart';
import 'package:elevate_task/features/products/ui/widgets/product_card_lower/card_content.dart';
import 'package:elevate_task/features/products/ui/widgets/product_card_upper/image_and_favorite_button.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key, required this.product});

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: AppConstants.defaultPadding,
      decoration: BoxDecoration(
        borderRadius: AppConstants.defaultBorderRadius,
        border: Border.all(
          color: AppColors.lightBlue,
          width: 2,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ImageAndFavoriteButton(
            image: product.image,
          ),
          CardContent(product: product),
        ],
      ),
    );
  }
}
