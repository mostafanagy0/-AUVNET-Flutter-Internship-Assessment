import 'package:auvnet/core/utils/app_text_style.dart';
import 'package:auvnet/features/onbording/presentation/widgets/botton_widget.dart';
import 'package:flutter/material.dart';

class OnboardingContent extends StatelessWidget {
  final String title;
  final String subtitle;
  final bool isLastPage;
  final VoidCallback onNext;

  const OnboardingContent({
    super.key,
    required this.title,
    required this.subtitle,
    required this.isLastPage,
    required this.onNext,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyles.rubik30W700.copyWith(color: Colors.black),
        ),

        const SizedBox(height: 16),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Text(
            subtitle,
            textAlign: TextAlign.center,
            style: TextStyles.dM12W700.copyWith(color: Color(0xE5677294)),
          ),
        ),

        const SizedBox(height: 45),

        BottonWidget(onNext: onNext),

        const SizedBox(height: 10),

        Text(
          'Next',
          style: TextStyles.dM12W700.copyWith(color: Color(0xE5677294)),
        ),
      ],
    );
  }
}
