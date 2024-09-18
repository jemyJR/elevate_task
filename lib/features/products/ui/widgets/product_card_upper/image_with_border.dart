import 'package:elevate_task/core/constants/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImageWithBorder extends StatelessWidget {
  const ImageWithBorder({
    super.key,
    required this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: AppConstants.defaultRadius,
        topRight: AppConstants.defaultRadius,
      ),
      child: Image.asset(
        image,
        height: 100.h,
        width: double.infinity,
        fit: BoxFit.cover,
      ),
    );
  }
}
