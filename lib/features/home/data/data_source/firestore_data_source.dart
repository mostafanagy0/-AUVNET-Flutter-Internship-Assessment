  import 'package:auvnet/core/errors/failures.dart';
  import 'package:auvnet/core/services/database_service.dart';
  import 'package:auvnet/features/home/data/models/restorant_model.dart';
  import 'package:auvnet/features/home/data/models/service_model.dart';
  import 'package:dartz/dartz.dart';

  class FirestoreDataSource {
    final DataBaseService databaseService;

    FirestoreDataSource(this.databaseService);

    Future<Either<Failures, List<ServiceModel>>> getServices() async {
      try {
        return await databaseService.getServices();
      } catch (e) {
        return Left(ServerFailure(message: e.toString()));
      }
    }

    Future<Either<Failures, List<RestaurantModel>>> getRestaurants() async {
      try {
        return await databaseService.getRestaurants();
      } catch (e) {
        return Left(ServerFailure(message: e.toString()));
      }
    }
  }
