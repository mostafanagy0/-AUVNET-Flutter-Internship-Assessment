import 'package:auvnet/core/errors/failures.dart';
import 'package:auvnet/features/home/data/models/restorant_model.dart';
import 'package:auvnet/features/home/data/models/service_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';

class DataBaseService {
  final FirebaseFirestore _firestore;

  DataBaseService(this._firestore);

  Future<Either<ServerFailure, List<ServiceModel>>> getServices() async {
    try {
      final snapshot = await _firestore.collection('services').get();
          print("🔍 Documents Count: ${snapshot.docs.length}");


      final services = snapshot.docs
          .map((doc) => ServiceModel.fromMap(doc.data(), doc.id))
          .toList();

      return Right(services);
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }

  Future<Either<ServerFailure, List<RestaurantModel>>> getRestaurants() async {
    try {
      final snapshot = await _firestore.collection('restaurants').get();

      final restaurants = snapshot.docs
          .map((doc) => RestaurantModel.fromMap(doc.data(), doc.id))
          .toList();

      return Right(restaurants);
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }
}
