import 'package:dartz/dartz.dart';
import 'package:flow/Domain/auth/AuthFailure.dart';
import 'package:flow/Domain/auth/auth_value_object.dart';
import 'package:flow/Domain/auth/user.dart';


abstract class AuthFacade{

  Future<Option<User>> getSignedInUser();

  Stream<bool> get authStatusChecker;

  Future<Either<AuthFailure,Unit>> sendSignInEmailLink(EmailAddress emailAddress);

  Future<Either<AuthFailure,Unit>> signUp( EmailAddress emailAddress,Password password);

  Future<Either<AuthFailure,Unit>> loginWithEmailAndPassword(EmailAddress emailAddress,Password password);

  Future<Either<AuthFailure,Unit>> googleSignIn();

  Future<void> signOut();

  }



