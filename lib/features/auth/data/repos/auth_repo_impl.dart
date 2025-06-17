import 'package:auvnet/core/errors/exeptions.dart';
import 'package:auvnet/core/errors/failures.dart';
import 'package:auvnet/core/services/firebase_auth_services.dart';
import 'package:auvnet/features/auth/data/models/user_model.dart';
import 'package:auvnet/features/auth/data/repos/auth_repo.dart';
import 'package:auvnet/features/auth/domain/entites/user_entite.dart';
import 'package:dartz/dartz.dart';

class AuthRepoImpl extends AuthRepo {
  final FirebaseAuthService firebaseAuthService;

  AuthRepoImpl({required this.firebaseAuthService});

  @override
  Future<Either<Failures, UesrEntity>> createUserWithEmailAndPassWord(
    String email,
    String passWord,
  ) async {
    try {
      final user = await firebaseAuthService.createUserWithEmailAndPassWord(
        email: email,
        passWord: passWord,
      );
      final userModel = UserModel.fromFirebaseUser(user);
      return Right(userModel);
    } on CustomException catch (e) {
      return Left(ServerFailure(message: e.message));
    } catch (e) {
      return Left(ServerFailure(message: 'this is an unexpected error.'));
    }
  }

  @override
  Future<Either<Failures, UesrEntity>> signInWithEmailAndPassword(
    String email,
    String passWord,
  ) async {
    try {
      final user = await firebaseAuthService.signInWithEmailAndPassword(
        email: email,
        passWord: passWord,
      );
      final userModel = UserModel.fromFirebaseUser(user);
      return Right(userModel);
    } on CustomException catch (e) {
      return Left(ServerFailure(message: e.message));
    } catch (e) {
      return Left(ServerFailure(message: 'this is an unexpected error.'));
    }
  }
}
