import 'package:elevate_task/core/constants/app_colors.dart';
import 'package:elevate_task/core/constants/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

void customSnackBar(BuildContext context, String message) {
  SchedulerBinding.instance.addPostFrameCallback((_) {
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          backgroundColor: AppColors.lightBlue,
          content: Text(
            message,
            style: AppStyle.font12BlackW500,
          ),
        ),
      );
  });
}
