import 'package:auvnet/core/helpers/extentions.dart';
import 'package:auvnet/core/routing/routes.dart';
import 'package:auvnet/features/auth/presentation/bloc/signup_bloc/bloc/signup_bloc.dart';
import 'package:auvnet/features/auth/presentation/bloc/signup_bloc/bloc/signup_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupBlocLisntener extends StatelessWidget {
  const SignupBlocLisntener({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignupBloc, SignupState>(
      listener: (context, state) {
        if (state.isLoading) {
          showDialog(
            context: context,
            barrierDismissible: false,
            builder: (context) =>
                const Center(child: CircularProgressIndicator()),
          );
        } else {
          Navigator.of(context, rootNavigator: true).maybePop();
        }

        if (state.errorMessage != null) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text(state.errorMessage!)));
        } else if (state.isSuccess) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(const SnackBar(content: Text("signup successfully")));
          context.pushNamed(Routes.signInView);
        }
      },
      child: child,
    );
  }
}
