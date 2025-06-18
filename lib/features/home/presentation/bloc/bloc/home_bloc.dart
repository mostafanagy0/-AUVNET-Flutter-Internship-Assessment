import 'package:auvnet/features/home/data/repos/home_repo.dart';
import 'package:auvnet/features/home/domain/entites/restaurant_entity.dart';
import 'package:auvnet/features/home/domain/entites/service_entity.dart';
import 'package:bloc/bloc.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeRepository repository;

  HomeBloc(this.repository) : super(HomeState()) {
    on<FetchServices>(_onFetchServices);
    on<FetchRestaurants>(_onFetchRestaurants);
  }

  Future<void> _onFetchServices(
    FetchServices event,
    Emitter<HomeState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));
    final result = await repository.getServices();
    emit(
      result.fold(
        (failure) => state.copyWith(isLoading: false, error: failure.message),
        (models) => state.copyWith(
          isLoading: false,
          services: models
              .map(
                (model) => ServiceEntity(
                  id: model.id,
                  name: model.name,
                  imageUrl: model.imageUrl,
                  duration: model.duration,
                ),
              )
              .toList(),
        ),
      ),
    );
  }

  Future<void> _onFetchRestaurants(
    FetchRestaurants event,
    Emitter<HomeState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));
    final result = await repository.getRestaurants();
    emit(
      result.fold(
        (failure) => state.copyWith(isLoading: false, error: failure.message),
        (models) => state.copyWith(
          isLoading: false,
          restaurants: models
              .map(
                (model) => RestaurantEntity(
                  id: model.id,
                  name: model.name,
                  imageUrl: model.imageUrl,
                  duration: model.duration,
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
