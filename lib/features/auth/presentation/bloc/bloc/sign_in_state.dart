import 'package:flutter/foundation.dart';
import 'package:auvnet/features/auth/domain/entites/user_entite.dart';


@immutable
sealed class SigninState {}

final class SigninInitial extends SigninState {}

final class SigninLoading extends SigninState {}

final class SigninSuccess extends SigninState {
  final UesrEntity uesrEntite;

  SigninSuccess({required this.uesrEntite});
}

final class SigninFailure extends SigninState {
  final String message;

  SigninFailure({required this.message});
}
