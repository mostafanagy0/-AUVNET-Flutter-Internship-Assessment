import 'package:auvnet/core/services/firebase_auth_services.dart';
import 'package:auvnet/features/auth/data/repos/auth_repo.dart';
import 'package:auvnet/features/auth/data/repos/auth_repo_impl.dart';
import 'package:firebase_auth/firebase_auth.dart' show FirebaseAuth;
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupGetit() {
  getIt.registerSingleton<FirebaseAuth>(FirebaseAuth.instance);

  getIt.registerSingleton<FirebaseAuthService>(
    FirebaseAuthService(getIt<FirebaseAuth>()),
  );

  getIt.registerSingleton<AuthRepo>(
    AuthRepoImpl(firebaseAuthService: getIt<FirebaseAuthService>()),
  );
}
