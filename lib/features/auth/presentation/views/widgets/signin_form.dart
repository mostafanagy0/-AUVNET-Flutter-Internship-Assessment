import 'package:auvnet/core/utils/assets.dart';
import 'package:auvnet/core/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignInForm extends StatefulWidget {
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
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  bool _obscurePassword = true;

  void _togglePasswordVisibility() {
    setState(() {
      _obscurePassword = !_obscurePassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 28),
      child: Form(
        key: widget.formKey,
        child: Column(
          children: [
            CustomTextFormField(
              controller: widget.emailController,
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
              controller: widget.passwordController,
              hintText: 'password',
              textInputType: TextInputType.text,
              obscureText: _obscurePassword,
              prefixIcon: SvgPicture.asset(
                Assets.imageMdiPasswordOutline,
                width: 20,
                height: 20,
              ),
              suffixIcon: GestureDetector(
                onTap: _togglePasswordVisibility,
                child: Icon(
                  _obscurePassword ? Icons.visibility_off : Icons.visibility,
                  color: Colors.grey,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
