import 'package:auvnet/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomGotCodeWidget extends StatelessWidget {
  const CustomGotCodeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: ListTile(
        leading: Image.asset(Assets.imageCoge),
        title: Text(
          'Got a code !',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        subtitle: Text('Add your code and save on your order'),

        onTap: () {
          // Handle tap
        },
      ),
    );
  }
}
