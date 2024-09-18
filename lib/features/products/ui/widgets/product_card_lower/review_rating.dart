import 'package:elevate_task/core/constants/app_colors.dart';
import 'package:elevate_task/core/constants/app_style.dart';
import 'package:elevate_task/core/helpers/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReviewRating extends StatelessWidget {
  const ReviewRating({super.key, required this.rating});

  final num rating;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Review ($rating)',
          style: AppStyle.font12BlackW500,
        ),
        horizontalSpace(5),
        Icon(
          Icons.star,
          color: AppColors.yellow,
          size: 20.sp,
        ),
      ],
    );
  }
}
