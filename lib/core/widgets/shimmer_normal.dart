import 'package:elevate_task/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerNormal extends StatelessWidget {
  const ShimmerNormal({
    super.key,
    required this.height,
    required this.width,
    this.border = 15,
  });
  final double height;
  final double width;
  final int? border;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: AppColors.black.withOpacity(0.1),
      highlightColor: AppColors.lightGrey,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: AppColors.lightGrey,
          borderRadius: BorderRadius.circular(border!.r),
        ),
      ),
    );
  }
}
