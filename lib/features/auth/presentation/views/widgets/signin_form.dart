import 'package:auvnet/core/utils/assets.dart';
import 'package:auvnet/core/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignInForm extends StatelessWidget {
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final GlobalKey<FormState> formKey;

  const SignInForm({
    super.key,
    required this.emailController,
    required this.passwordController,
    required this.formKey,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 28),
      child: Form(
        key: formKey,
        child: Column(
          children: [
            CustomTextFormField(
              controller: emailController,
              hintText: 'mail',
              prefixIcon: SvgPicture.asset(
                Assets.imageIcOutlineMail,
                width: 20,
                height: 20,
              ),
              textInputType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 18),
            CustomTextFormField(
              controller: passwordController,
              hintText: 'password',
              textInputType: TextInputType.text,
              prefixIcon: SvgPicture.asset(
                Assets.imageMdiPasswordOutline,
                width: 20,
                height: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
