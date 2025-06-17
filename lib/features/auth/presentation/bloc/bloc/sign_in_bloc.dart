import 'package:auvnet/features/auth/data/repos/auth_repo.dart';
import 'package:auvnet/features/auth/presentation/bloc/bloc/sign_in_event.dart';
import 'package:auvnet/features/auth/presentation/bloc/bloc/sign_in_state.dart';
import 'package:bloc/bloc.dart';

class SigninBloc extends Bloc<SigninEvent, SigninState> {
  final AuthRepo authRepo;

  SigninBloc(this.authRepo) : super(SigninInitial()) {
    on<SignInWithEmailAndPassword>(onEmailAndPasswordSignIn);
  }

  Future<void> onEmailAndPasswordSignIn(
    SignInWithEmailAndPassword event,
    Emitter<SigninState> emit,
  ) async {
    emit(SigninLoading());
    final result = await authRepo.signInWithEmailAndPassword(
      event.email,
      event.password,
    );
    result.fold(
      (failure) => emit(SigninFailure(message: failure.message)),
      (userEntity) => emit(SigninSuccess(uesrEntite: userEntity)),
    );
  }
}
