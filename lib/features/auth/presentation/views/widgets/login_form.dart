import 'package:auvnet/core/utils/assets.dart';
import 'package:auvnet/core/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 37),
      child: Column(
        children: [
          CustomTextFormField(
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
            hintText: 'password',
            textInputType: TextInputType.emailAddress,
            prefixIcon: SizedBox(
              child: SvgPicture.asset(
                Assets.imageMdiPasswordOutline,
                width: 5,
                height: 5,
              ),
            ),
            // suffixIcon: SvgPicture.asset(Assets.imagePassword),
          ),
        ],
      ),
    );
  }
}
