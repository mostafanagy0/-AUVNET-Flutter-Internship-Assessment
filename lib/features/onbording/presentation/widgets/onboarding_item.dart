import 'package:auvnet/core/utils/assets.dart';
import 'package:flutter/material.dart';

class OnboardingItem extends StatelessWidget {
  const OnboardingItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: -104,
          top: -20,
          child: Container(
            width: 342,
            height: 342,
            decoration: const ShapeDecoration(
              shape: OvalBorder(),
              gradient: LinearGradient(
                begin: Alignment(-0.00, 0.05),
                end: Alignment(0.93, 1.10),
                colors: [Color(0xFF8900FE), Color(0xFFFFDE59)],
              ),
            ),
          ),
        ),

        Positioned(
          left: 20,
          top: 91,
          child: Container(
            width: 336,
            height: 336,
            decoration: ShapeDecoration(
              image: DecorationImage(
                image: AssetImage(Assets.imageLogo),
                fit: BoxFit.cover,
              ),
              shape: const OvalBorder(),
            ),
          ),
        ),
      ],
    );
  }
}
