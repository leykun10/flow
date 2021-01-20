import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart' as firebase;
import 'package:flow/Domain/auth/auth_value_object.dart';
import 'package:flow/Domain/auth/user.dart' as domainUser;

extension FirebaseUserDomain on firebase.User{
  domainUser.User toDomainUser() => domainUser.User(id: UniqueId(uid));
}
extension on firebase.FirebaseAuth{

}