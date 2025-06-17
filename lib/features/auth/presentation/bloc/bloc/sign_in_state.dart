import 'package:auvnet/features/auth/domain/entites/user_entite.dart';

class SigninState {
  final bool isLoading;
  final String? errorMessage;
  final UesrEntity? user;

  const SigninState({
    this.isLoading = false,
    this.errorMessage,
    this.user,
  });

  SigninState copyWith({
    bool? isLoading,
    String? errorMessage,
    UesrEntity? user,
  }) {
    return SigninState(
      isLoading: isLoading ?? this.isLoading,
      errorMessage: errorMessage ?? this.errorMessage,
      user: user ?? this.user,
    );
  }

  factory SigninState.initial() => const SigninState();
}
