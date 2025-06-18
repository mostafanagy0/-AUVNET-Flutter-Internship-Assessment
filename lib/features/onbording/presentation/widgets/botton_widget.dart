import 'package:auvnet/core/helpers/extentions.dart';
import 'package:auvnet/core/routing/routes.dart';
import 'package:auvnet/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';

class BottonWidget extends StatelessWidget {
  const BottonWidget({super.key, required this.onNext});

  final VoidCallback onNext;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
        color: const Color(0xFF8900FE),
        borderRadius: BorderRadius.circular(10),
      ),
      alignment: Alignment.center,
      child: GestureDetector(
        onTap: () {
          context.pushNamed(Routes.signInView);
        },
        child: Text('Get Started', style: TextStyles.dM16W700),
      ),
    );
  }
}
