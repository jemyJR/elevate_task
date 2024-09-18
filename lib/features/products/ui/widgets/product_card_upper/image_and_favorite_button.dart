import 'package:elevate_task/core/constants/app_assets.dart';
import 'package:elevate_task/core/constants/app_constants.dart';
import 'package:elevate_task/features/products/ui/widgets/product_card_upper/favorite_button.dart';
import 'package:elevate_task/features/products/ui/widgets/product_card_upper/image_with_border.dart';
import 'package:flutter/material.dart';

class ImageAndFavoriteButton extends StatelessWidget {
  const ImageAndFavoriteButton({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        const ImageWithBorder(
          image: Assets.imagesTest,
        ),
        Padding(
          padding: AppConstants.defaultPadding,
          child: const FavoriteButton(),
        ),
      ],
    );
  }
}
