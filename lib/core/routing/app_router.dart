import 'package:auvnet/core/di/dependancy_ingection.dart';
import 'package:auvnet/core/routing/routes.dart';
import 'package:auvnet/features/auth/presentation/bloc/signin_bloc/sign_in_bloc.dart';
import 'package:auvnet/features/auth/presentation/bloc/signup_bloc/bloc/signup_bloc.dart';
import 'package:auvnet/features/auth/presentation/views/signin_view.dart';
import 'package:auvnet/features/auth/presentation/views/signup_view.dart';
import 'package:auvnet/features/home/presentation/views/home_view.dart';
import 'package:auvnet/features/onbording/presentation/Views/onbordind_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  static Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onbordindView:
        return MaterialPageRoute(builder: (_) => const OnbordindView());

      //SignInView
      case Routes.signInView:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<SigninBloc>(),
            child: const SignInView(),
          ),
        );

      //signupView
      case Routes.signupView:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<SignupBloc>(),
            child: SignupView(),
          ),
        );
      //HomeView
      case Routes.homeView:
        return MaterialPageRoute(builder: (_) => HomeView());

      default:
        return null;
    }
  }
}
