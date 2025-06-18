import 'package:auvnet/core/utils/assets.dart';
import 'package:auvnet/core/widgets/custom_botton.dart';
import 'package:auvnet/features/auth/presentation/bloc/signin_bloc/sign_in_bloc.dart';
import 'package:auvnet/features/auth/presentation/bloc/signin_bloc/sign_in_event.dart';
import 'package:auvnet/features/auth/presentation/views/widgets/create_account_widget.dart';
import 'package:auvnet/features/auth/presentation/views/widgets/login_bloc_lisntener.dart';
import 'package:auvnet/features/auth/presentation/views/widgets/signin_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInView extends StatefulWidget {
  const SignInView({super.key});

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
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
              //LoginBlocListener
              LoginBlocListener(
                child: Column(
                  children: [
                    //SignInForm
                    SignInForm(
                      emailController: emailController,
                      passwordController: passwordController,
                      formKey: _formKey,
                    ),
                    const SizedBox(height: 26),
                    //CustomBotton
                    CustomBotton(text: 'Log in', onTap: submitLoginForm),
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

  void submitLoginForm() {
    if (_formKey.currentState!.validate()) {
      context.read<SigninBloc>().add(
        SignInWithEmailAndPassword(
          email: emailController.text.trim(),
          password: passwordController.text.trim(),
        ),
      );
    }
  }
}
