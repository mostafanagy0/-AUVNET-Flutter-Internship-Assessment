abstract class SignupEvent {}

class SignupWithEmailAndPassword extends SignupEvent {
  final String email;
  final String password;

  SignupWithEmailAndPassword({required this.email, required this.password});
}
