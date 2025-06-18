import 'package:auvnet/core/utils/assets.dart';
import 'package:flutter/material.dart';

class ShortcutItem extends StatelessWidget {
  const ShortcutItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 65,
          height: 65,
          decoration: ShapeDecoration(
            color: const Color(0xFFFFEEE6),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Image.asset(Assets.imageCoge),
        ),
        Text('mos'),
      ],
    );
  }
}

class ShortcutListView extends StatelessWidget {
  const ShortcutListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 8),
            child: ShortcutItem(),
          );
        },
      ),
    );
  }
}
