import 'package:auvnet/core/utils/app_text_style.dart';
import 'package:auvnet/core/utils/assets.dart';
import 'package:flutter/material.dart';

class Headerwidget extends StatelessWidget {
  const Headerwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 180,
      decoration: ShapeDecoration(
        gradient: LinearGradient(
          begin: Alignment(-0.00, 0.05),
          end: Alignment(0.93, 1.10),
          colors: [const Color(0xFF8900FE), const Color(0xFFFFDE59)],
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          top: 35.0,
          right: 30,
          left: 31,
          bottom: 37,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 16),
                Text('Delivering to', style: TextStyles.dM12W700),
                Text('Al Satwa, 81A Street', style: TextStyles.dM16W700),
                Text('Hi hepa! ', style: TextStyles.rubik30W700),
              ],
            ),
            Image.asset(Assets.imageGirlimage),
          ],
        ),
      ),
    );
  }
}
