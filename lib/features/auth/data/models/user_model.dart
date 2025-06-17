import 'package:auvnet/features/auth/domain/entites/user_entite.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserModel extends UesrEntity {
  UserModel({required super.email, required super.uId});

  // we are created model from 'User' that return from firebase
  factory UserModel.fromFirebaseUser(User user) {
    return UserModel(email: user.email ?? '', uId: user.uid);
  }
  factory UserModel.fromjson(Map<String, dynamic> json) {
    return UserModel(email: json['email'], uId: json['uId']);
  }
  factory UserModel.fromEntity(UesrEntity userEntity) {
    return UserModel(email: userEntity.email, uId: userEntity.uId);
  }
  toMap() {
    return {'email': email, 'uId': uId};
  }
}
