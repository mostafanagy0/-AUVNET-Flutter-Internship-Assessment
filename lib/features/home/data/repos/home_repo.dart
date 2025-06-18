import 'package:auvnet/core/errors/failures.dart';
import 'package:auvnet/features/home/data/models/restorant_model.dart';
import 'package:auvnet/features/home/data/models/service_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepository {
  Future<Either<Failures, List<ServiceModel>>> getServices();
  Future<Either<Failures, List<RestaurantModel>>> getRestaurants();
}
