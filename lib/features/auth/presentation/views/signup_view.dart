import 'package:auvnet/core/utils/assets.dart';
import 'package:auvnet/core/widgets/custom_botton.dart';
import 'package:auvnet/features/auth/presentation/bloc/signup_bloc/bloc/signup_bloc.dart';
import 'package:auvnet/features/auth/presentation/bloc/signup_bloc/bloc/signup_event.dart';
import 'package:auvnet/features/auth/presentation/views/widgets/create_account_widget.dart';
import 'package:auvnet/features/auth/presentation/views/widgets/signup_bloc_lisntener.dart';
import 'package:auvnet/features/auth/presentation/views/widgets/signup_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupView extends StatefulWidget {
  const SignupView({super.key});

  @override
  State<SignupView> createState() => _SignupViewState();
}

class _SignupViewState extends State<SignupView> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  void onSignUp() {
    if (_formKey.currentState!.validate()) {
      context.read<SignupBloc>().add(
        SignupWithEmailAndPassword(
          email: emailController.text.trim(),
          password: passwordController.text.trim(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              //Logo
              const SizedBox(height: 80),
              Center(child: Image.asset(Assets.imageLogo)),
              SignupBlocLisntener(
                child: Column(
                  children: [
                    //SignupForm
                    SignupForm(
                      emailController: emailController,
                      passwordController: passwordController,
                      confirmPasswordController: confirmPasswordController,
                      formKey: _formKey,
                    ),
                    const SizedBox(height: 26),
                    CustomBotton(text: 'Sign up', onTap: onSignUp),
                    //CreateAnAccountWidget
                    CreateAnAccountWidget(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
