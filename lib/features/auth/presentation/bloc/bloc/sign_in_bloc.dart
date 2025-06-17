import 'package:auvnet/features/auth/data/repos/auth_repo.dart';
import 'package:auvnet/features/auth/presentation/bloc/bloc/sign_in_event.dart';
import 'package:auvnet/features/auth/presentation/bloc/bloc/sign_in_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SigninBloc extends Bloc<SigninEvent, SigninState> {
  final AuthRepo authRepo;

  SigninBloc(this.authRepo) : super(SigninState.initial()) {
    on<SignInWithEmailAndPassword>(onEmailAndPasswordSignIn);
  }

  Future<void> onEmailAndPasswordSignIn(
    SignInWithEmailAndPassword event,
    Emitter<SigninState> emit,
  ) async {
    emit(state.copyWith(isLoading: true, errorMessage: null));

    final result = await authRepo.signInWithEmailAndPassword(
      event.email,
      event.password,
    );

    result.fold(
      (failure) =>
          emit(state.copyWith(isLoading: false, errorMessage: failure.message)),
      (userEntity) => emit(
        state.copyWith(isLoading: false, user: userEntity, errorMessage: null),
      ),
    );
  }
}
