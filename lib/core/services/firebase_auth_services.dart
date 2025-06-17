import 'dart:developer';

import 'package:auvnet/core/errors/exeptions.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthService {
  final FirebaseAuth firebaseAuth;

  FirebaseAuthService(this.firebaseAuth);

  Future<User> createUserWithEmailAndPassWord({
    required String email,
    required String passWord,
  }) async {
    try {
      final credential = await firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: passWord,
      );

      final user = credential.user;
      if (user == null) {
        throw CustomException(message: 'حدث خطأ غير متوقع أثناء إنشاء الحساب.');
      }
      return user;
    } on FirebaseAuthException catch (e) {
      log('FirebaseAuthException in createUserWithEmailAndPassWord: ${e.code}');
      throw CustomException(message: _handleFirebaseAuthError(e.code));
    } catch (e) {
      log('Unknown error in createUserWithEmailAndPassWord: ${e.toString()}');
      throw CustomException(
        message: 'حدث خطأ غير متوقع. الرجاء المحاولة لاحقًا.',
      );
    }
  }

  Future<User> signInWithEmailAndPassword({
    required String email,
    required String passWord,
  }) async {
    try {
      final credential = await firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: passWord,
      );

      final user = credential.user;
      if (user == null) {
        throw CustomException(message: 'حدث خطأ غير متوقع أثناء تسجيل الدخول.');
      }
      return user;
    } on FirebaseAuthException catch (e) {
      log('FirebaseAuthException in signInWithEmailAndPassword: ${e.code}');
      throw CustomException(message: _handleFirebaseAuthError(e.code));
    } catch (e) {
      log('Unknown error in signInWithEmailAndPassword: ${e.toString()}');
      throw CustomException(
        message: 'حدث خطأ غير متوقع. الرجاء المحاولة لاحقًا.',
      );
    }
  }

  String _handleFirebaseAuthError(String code) {
    switch (code) {
      case 'weak-password':
        return 'الرقم السري ضعيف جداً.';
      case 'email-already-in-use':
        return 'لقد قمت بالتسجيل مسبقاً. الرجاء تسجيل الدخول.';
      case 'user-not-found':
      case 'wrong-password':
        return 'البريد الإلكتروني أو الرقم السري غير صحيح.';
      case 'network-request-failed':
        return 'تأكد من اتصالك بالإنترنت.';
      default:
        return 'حدث خطأ غير متوقع. الرجاء المحاولة لاحقًا.';
    }
  }
}
