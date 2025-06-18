import 'package:auvnet/core/routing/app_router.dart';
import 'package:auvnet/core/routing/routes.dart';
import 'package:flutter/material.dart';

class Auvnet extends StatelessWidget {
  const Auvnet({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRouter.onGenerateRoute,
      initialRoute: Routes.splashView,
    );
  }
}
