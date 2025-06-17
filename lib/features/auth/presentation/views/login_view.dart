import 'package:auvnet/features/auth/presentation/views/widgets/login_form.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(height: 80),
          Center(child: Image.asset('assets/image/logo.png')),
          LoginForm(),
        ],
      ),
    );
  }
}
