import 'package:auvnet/features/home/presentation/bloc/bloc/home_bloc.dart';
import 'package:auvnet/features/home/presentation/views/widgets/restaurantListView.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart' show BlocBuilder;

class RestaurantBlocBuilder extends StatelessWidget {
  const RestaurantBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      buildWhen: (previous, current) =>
          previous.restaurants != current.restaurants ||
          previous.isLoading != current.isLoading,
      builder: (context, state) {
        if (state.isLoading && state.restaurants.isEmpty) {
          return const Center(child: CircularProgressIndicator());
        } else if (state.restaurants.isEmpty) {
          return const Center(child: Text('No restaurants found'));
        } else {
          return RestaurantListView(restaurants: state.restaurants);
        }
      },
    );
  }
}
