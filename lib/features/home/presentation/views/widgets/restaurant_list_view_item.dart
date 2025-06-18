
import 'package:auvnet/features/home/domain/entites/restaurant_entity.dart';
import 'package:flutter/material.dart';

class RestaurantListViewItem extends StatelessWidget {
  final RestaurantEntity restaurant;
  const RestaurantListViewItem({super.key, required this.restaurant});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 105,
          height: 70,
          decoration: BoxDecoration(
            color: const Color(0xFFF5F5F5),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Image.network(restaurant.imageUrl, fit: BoxFit.cover),
        ),
        const SizedBox(height: 4),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
          decoration: BoxDecoration(
            color: const Color(0xFF8900FE),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Text(
            restaurant.duration,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        const SizedBox(height: 2),
        Text(
          restaurant.name,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
