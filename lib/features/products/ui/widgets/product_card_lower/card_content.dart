import 'package:elevate_task/core/constants/app_colors.dart';
import 'package:elevate_task/core/constants/app_constants.dart';
import 'package:elevate_task/core/helpers/extensions.dart';
import 'package:elevate_task/features/products/data/models/product_model.dart';
import 'package:elevate_task/features/products/ui/widgets/product_card_lower/price_with_discount.dart';
import 'package:elevate_task/features/products/ui/widgets/product_card_lower/review_rating.dart';
import 'package:elevate_task/features/products/ui/widgets/product_card_lower/title_with_description.dart';
import 'package:flutter/material.dart';

class CardContent extends StatelessWidget {
  const CardContent({super.key, required this.product});

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: AppConstants.defaultPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TitleWithDescription(
              title: product.title,
              description: product.description,
            ),
            // verticalSpace(5),
            PriceWithDiscount(
              price: product.price,
              priceBeforeDiscount: product.price.randomIncreasedPrice,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ReviewRating(
                  rating: product.rating.rate,
                ),
                CircleAvatar(
                  backgroundColor: AppColors.darkBlue,
                  radius: AppConstants.defaulcircleradius,
                  child: const Icon(
                    Icons.add,
                    color: AppColors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
