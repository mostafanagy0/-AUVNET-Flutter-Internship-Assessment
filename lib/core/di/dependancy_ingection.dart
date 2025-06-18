import 'package:auvnet/core/services/database_service.dart';
import 'package:auvnet/core/services/firebase_auth_services.dart';
import 'package:auvnet/features/auth/data/repos/auth_repo.dart';
import 'package:auvnet/features/auth/data/repos/auth_repo_impl.dart';
import 'package:auvnet/features/auth/presentation/bloc/signin_bloc/sign_in_bloc.dart';
import 'package:auvnet/features/auth/presentation/bloc/signup_bloc/bloc/signup_bloc.dart';
import 'package:auvnet/features/home/data/data_source/firestore_data_source.dart';
import 'package:auvnet/features/home/data/repos/home_repo.dart';
import 'package:auvnet/features/home/data/repos/home_repo_impl.dart';
import 'package:auvnet/features/home/presentation/bloc/bloc/home_bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart' show FirebaseAuth;
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupGetit() {
  // Firebase core
  getIt.registerSingleton<FirebaseAuth>(FirebaseAuth.instance);
  getIt.registerLazySingleton<FirebaseFirestore>(
    () => FirebaseFirestore.instance,
  );

  // Auth services
  getIt.registerSingleton<FirebaseAuthService>(
    FirebaseAuthService(getIt<FirebaseAuth>()),
  );
  getIt.registerLazySingleton<DataBaseService>(() => DataBaseService(getIt()));

  // Auth Repo
  getIt.registerSingleton<AuthRepo>(
    AuthRepoImpl(firebaseAuthService: getIt<FirebaseAuthService>()),
  );

  // Auth Blocs
  getIt.registerFactory<SigninBloc>(() => SigninBloc(getIt<AuthRepo>()));
  getIt.registerFactory<SignupBloc>(() => SignupBloc(getIt<AuthRepo>()));

  // Home dependencies
  getIt.registerLazySingleton<FirestoreDataSource>(
    () => FirestoreDataSource(getIt()),
  );

  // Home repo
  getIt.registerLazySingleton<HomeRepository>(
    () => HomeRepositoryImpl(getIt<FirestoreDataSource>()),
  );

  // Home Bloc
  getIt.registerFactory<HomeBloc>(() => HomeBloc(getIt<HomeRepository>()));
}
