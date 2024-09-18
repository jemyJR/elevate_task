import 'package:elevate_task/core/constants/app_colors.dart';
import 'package:elevate_task/core/constants/app_constants.dart';
import 'package:elevate_task/features/products/ui/widgets/product_card_lower/price_with_discount.dart';
import 'package:elevate_task/features/products/ui/widgets/product_card_lower/review_rating.dart';
import 'package:elevate_task/features/products/ui/widgets/product_card_lower/title_with_description.dart';
import 'package:flutter/material.dart';

class CardContent extends StatelessWidget {
  const CardContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: AppConstants.defaultPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const TitleWithDescription(
              title: 'Nike Air Jordan',
              description: 'Product Description here',
            ),
            // verticalSpace(5),
            const PriceWithDiscount(
              price: 1800,
              priceBeforeDiscount: 2100,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const ReviewRating(
                  rating: 4.5,
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
