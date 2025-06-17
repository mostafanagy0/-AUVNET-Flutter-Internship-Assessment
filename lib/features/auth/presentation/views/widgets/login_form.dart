import 'package:auvnet/core/utils/assets.dart';
import 'package:auvnet/core/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 37),
      child: Form(
        key: _formKey,
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
            SizedBox(height: 18),
            CustomTextFormField(
              controller: passwordController,
              hintText: 'password',
              textInputType: TextInputType.emailAddress,
              prefixIcon: SizedBox(
                child: SvgPicture.asset(
                  Assets.imageMdiPasswordOutline,
                  width: 5,
                  height: 5,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
