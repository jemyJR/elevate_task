import 'package:elevate_task/core/di/dependency_injection.dart';
import 'package:elevate_task/core/routing/app_router.dart';
import 'package:elevate_task/elevate_task.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  await setupGetIt();
  // To fix texts being hidden bug in flutter_screenutil in release mode.
  await ScreenUtil.ensureScreenSize();

  runApp(
    ElevateTask(
      appRouter: AppRouter(),
    ),
  );
}
