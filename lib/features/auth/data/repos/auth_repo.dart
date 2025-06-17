// ignore_for_file: non_constant_identifier_names

import 'package:auvnet/core/errors/failures.dart';
import 'package:auvnet/features/auth/domain/entites/user_entite.dart';
import 'package:dartz/dartz.dart';

abstract class AuthRepo {
  Future<Either<Failures, UesrEntity>> createUserWithEmailAndPassWord(
    String email,
    String passWord,
  );
  Future<Either<Failures, UesrEntity>> signInWithEmailAndPassword(
    String email,
    String passWord,
  );
}
