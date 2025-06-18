import 'package:auvnet/core/helpers/extentions.dart';
import 'package:auvnet/core/routing/routes.dart';
import 'package:flutter/material.dart';

class CreateAnAccountWidget extends StatelessWidget {
  const CreateAnAccountWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        context.pushNamed(Routes.signupView);
      },
      child: const Text('Create an account'),
    );
  }
}
