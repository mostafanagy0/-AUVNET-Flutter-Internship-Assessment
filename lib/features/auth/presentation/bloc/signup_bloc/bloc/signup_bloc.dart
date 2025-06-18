import 'package:auvnet/features/auth/data/repos/auth_repo.dart';
import 'package:auvnet/features/auth/presentation/bloc/signup_bloc/bloc/signup_event.dart';
import 'package:auvnet/features/auth/presentation/bloc/signup_bloc/bloc/signup_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupBloc extends Bloc<SignupEvent, SignupState> {
  final AuthRepo authRepo;

  SignupBloc(this.authRepo) : super(SignupState()) {
    on<SignupWithEmailAndPassword>(_signupWithEmailAndPassword);
  }

  Future<void> _signupWithEmailAndPassword(
    SignupWithEmailAndPassword event,
    Emitter<SignupState> emit,
  ) async {
    emit(state.copyWith(isLoading: true, errorMessage: null));
    final result = await authRepo.createUserWithEmailAndPassWord(
      event.email,
      event.password,
    );
    result.fold(
      (failure) =>
          emit(state.copyWith(isLoading: false, errorMessage: failure.message)),
      (user) => emit(state.copyWith(isLoading: false, isSuccess: true)),
    );
  }
}
