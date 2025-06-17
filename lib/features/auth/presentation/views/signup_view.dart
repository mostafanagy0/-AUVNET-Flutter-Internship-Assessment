import 'package:auvnet/core/helpers/extentions.dart';
import 'package:auvnet/core/routing/routes.dart';
import 'package:auvnet/core/utils/assets.dart';
import 'package:auvnet/core/widgets/custom_botton.dart';
import 'package:auvnet/features/auth/presentation/views/widgets/signup_form.dart';
import 'package:flutter/material.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              SizedBox(height: 80),
              Center(child: Image.asset(Assets.imageLogo)),
              SignupForm(),
              SizedBox(height: 26),
              CustomBotton(
                text: 'Sign up',
                onTap: () {
                  context.pushNamed(Routes.signupView);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
