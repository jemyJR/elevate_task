import 'package:elevate_task/core/constants/app_colors.dart';
import 'package:elevate_task/core/constants/app_constants.dart';
import 'package:flutter/material.dart';

class FavoriteButton extends StatelessWidget {
  const FavoriteButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            spreadRadius: 5,
            blurRadius: 3,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: CircleAvatar(
        backgroundColor: AppColors.white,
        radius: AppConstants.defaulcircleradius,
        child: const Icon(
          Icons.favorite_border,
          color: AppColors.darkBlue,
        ),
      ),
    );
  }
}
