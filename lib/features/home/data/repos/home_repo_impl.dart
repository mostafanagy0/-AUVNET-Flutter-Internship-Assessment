import 'package:auvnet/core/errors/failures.dart';
import 'package:auvnet/features/home/data/data_source/firestore_data_source.dart';
import 'package:auvnet/features/home/data/models/restorant_model.dart';
import 'package:auvnet/features/home/data/models/service_model.dart';
import 'package:auvnet/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepositoryImpl implements HomeRepository {
  final FirestoreDataSource dataSource;

  HomeRepositoryImpl(this.dataSource);

  @override
  Future<Either<Failures, List<ServiceModel>>> getServices() async {
    return await dataSource.getServices();
  }

  @override
  Future<Either<Failures, List<RestaurantModel>>> getRestaurants() async {
    return await dataSource.getRestaurants();
  }
}
