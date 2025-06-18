
import 'package:auvnet/features/home/domain/entites/restaurant_entity.dart';
import 'package:auvnet/features/home/presentation/views/widgets/restaurant_list_view_item.dart';
import 'package:flutter/material.dart';

class RestaurantListView extends StatelessWidget {
  final List<RestaurantEntity> restaurants;
  const RestaurantListView({super.key, required this.restaurants});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: restaurants.length,
        itemBuilder: (context, index) {
          final restaurant = restaurants[index];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: RestaurantListViewItem(restaurant: restaurant),
          );
        },
      ),
    );
  }
}
