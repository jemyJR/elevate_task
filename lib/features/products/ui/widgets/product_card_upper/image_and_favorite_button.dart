import 'package:elevate_task/core/constants/app_constants.dart';
import 'package:elevate_task/core/widgets/custom_network_image.dart';
import 'package:elevate_task/features/products/ui/widgets/product_card_upper/favorite_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImageAndFavoriteButton extends StatelessWidget {
  const ImageAndFavoriteButton({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        CustomNetworkImage(
          height: 100.h,
          width: double.infinity,
          imageUrl: image,
        ),
        Padding(
          padding: AppConstants.defaultPadding,
          child: const FavoriteButton(),
        ),
      ],
    );
  }
}
