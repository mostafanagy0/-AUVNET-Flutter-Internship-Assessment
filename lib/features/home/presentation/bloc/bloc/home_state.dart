part of 'home_bloc.dart';

class HomeState {
  final bool isLoading;
  final List<ServiceEntity> services;
  final List<RestaurantEntity> restaurants;
  final String? error;

  HomeState({
    this.isLoading = false,
    this.services = const [],
    this.restaurants = const [],
    this.error,
  });

  HomeState copyWith({
    bool? isLoading,
    List<ServiceEntity>? services,
    List<RestaurantEntity>? restaurants,
    String? error,
  }) {
    return HomeState(
      isLoading: isLoading ?? this.isLoading,
      services: services ?? this.services,
      restaurants: restaurants ?? this.restaurants,
      error: error ?? this.error,
    );
  }

  @override
  String toString() =>
      'HomeState(isLoading: $isLoading, services: ${services.length}, restaurants: ${restaurants.length}, error: $error)';
}