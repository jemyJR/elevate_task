import 'package:cached_network_image/cached_network_image.dart';
import 'package:elevate_task/core/constants/app_colors.dart';
import 'package:elevate_task/core/constants/app_constants.dart';
import 'package:elevate_task/core/widgets/shimmer_normal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomNetworkImage extends StatelessWidget {
  const CustomNetworkImage({
    super.key,
    required this.height,
    required this.width,
    required this.imageUrl,
  });
  final double height;
  final double width;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: AppConstants.defaultRadius,
        topRight: AppConstants.defaultRadius,
      ),
      child: CachedNetworkImage(
        height: height,
        width: width,
        imageUrl: imageUrl,
        fit: BoxFit.cover,
        placeholder: (context, url) =>
            ShimmerNormal(height: height, width: width),
        errorWidget: (context, url, error) => Icon(
          Icons.nearby_error,
          color: AppColors.darkBlue,
          size: 50.sp,
        ),
      ),
    );
  }
}
