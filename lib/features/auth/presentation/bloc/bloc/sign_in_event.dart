import 'package:flutter/material.dart';

@immutable
sealed class SigninEvent {}

final class SignInWithEmailAndPassword extends SigninEvent {
  final String email;
  final String password;

  SignInWithEmailAndPassword({required this.email, required this.password});
}
