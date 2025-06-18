import 'package:auvnet/core/utils/assets.dart';
import 'package:auvnet/core/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignupForm extends StatelessWidget {
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final TextEditingController confirmPasswordController;
  final GlobalKey<FormState> formKey;

  const SignupForm({
    super.key,
    required this.emailController,
    required this.passwordController,
    required this.formKey,
    required this.confirmPasswordController,
  });

  @override
  Widget build(BuildContext context) {
    return _SignupFormContent(
      emailController: emailController,
      passwordController: passwordController,
      confirmPasswordController: confirmPasswordController,
      formKey: formKey,
    );
  }
}

class _SignupFormContent extends StatefulWidget {
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final TextEditingController confirmPasswordController;
  final GlobalKey<FormState> formKey;

  const _SignupFormContent({
    required this.emailController,
    required this.passwordController,
    required this.confirmPasswordController,
    required this.formKey,
  });

  @override
  State<_SignupFormContent> createState() => _SignupFormContentState();
}

class _SignupFormContentState extends State<_SignupFormContent> {
  bool _obscurePassword = true;
  bool _obscureConfirmPassword = true;

  void _togglePasswordVisibility() {
    setState(() {
      _obscurePassword = !_obscurePassword;
    });
  }

  void _toggleConfirmPasswordVisibility() {
    setState(() {
      _obscureConfirmPassword = !_obscureConfirmPassword;
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
            const SizedBox(height: 18),
            CustomTextFormField(
              controller: widget.confirmPasswordController,
              hintText: 'Confirm passwordd',
              textInputType: TextInputType.text,
              obscureText: _obscureConfirmPassword,
              prefixIcon: SvgPicture.asset(
                Assets.imageMdiPasswordOutline,
                width: 20,
                height: 20,
              ),
              suffixIcon: GestureDetector(
                onTap: _toggleConfirmPasswordVisibility,
                child: Icon(
                  _obscureConfirmPassword ? Icons.visibility_off : Icons.visibility,
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
