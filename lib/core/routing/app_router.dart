import 'package:auvnet/core/routing/routes.dart';
import 'package:auvnet/features/onbording/presentation/Views/onbordind_view.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onbordindView:
        return MaterialPageRoute(builder: (_) => const OnbordindView());

      default:
        return null;
    }
  }
}
