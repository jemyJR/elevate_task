import 'package:elevate_task/core/routing/app_router.dart';
import 'package:elevate_task/core/routing/routes.dart';
import 'package:flutter/material.dart';

class ElevateTask extends StatelessWidget {
  const ElevateTask({
    super.key,
    required this.appRouter,
  });
  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Elevate Task',
      debugShowCheckedModeBanner: false,
      onGenerateRoute: appRouter.generateRoute,
      initialRoute: Routes.productsScreen,
    );
  }
}
