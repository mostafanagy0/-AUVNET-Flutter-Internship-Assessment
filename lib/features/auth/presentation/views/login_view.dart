import 'package:auvnet/core/helpers/extentions.dart';
import 'package:auvnet/core/routing/routes.dart';
import 'package:auvnet/core/widgets/custom_botton.dart';
import 'package:auvnet/features/auth/presentation/bloc/bloc/sign_in_bloc.dart';
import 'package:auvnet/features/auth/presentation/bloc/bloc/sign_in_event.dart';
import 'package:auvnet/features/auth/presentation/views/widgets/login_bloc_lisntener.dart';
import 'package:auvnet/features/auth/presentation/views/widgets/login_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              SizedBox(height: 80),
              Center(child: Image.asset('assets/image/logo.png')),
              LoginForm(),
              SizedBox(height: 26),
             
              
            ],
          ),
        ),
      ),
    );
  }
}
