import 'dart:async';
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:flow/Domain/auth/firebaseUserMapper.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:flow/Domain/auth/i_auth_facade.dart';
import 'package:flow/Domain/auth/AuthFailure.dart';
import 'package:flow/Domain/auth/auth_value_object.dart';
import 'package:flow/Domain/auth/user.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart' as google_sign_in;
import 'package:flow/Infrastructure/auth/firebase_dynamic_link_service.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@LazySingleton(as:AuthFacade)
class FirebaseAuthFacade implements AuthFacade{

  FirebaseAuthFacade(firebase_auth.FirebaseAuth firebaseAuth,google_sign_in.GoogleSignIn googleSignIn,SharedPreferences sharedPreferences,
      FirebaseDynamicLinkService firebaseDynamicLinkService):
        _googleSignIn=googleSignIn??google_sign_in.GoogleSignIn.standard(),
        _firebaseAuth=firebaseAuth,
        _sharedPreferences=sharedPreferences,
        _firebaseDynamicLinkService =firebaseDynamicLinkService,
        _streamController= StreamController.broadcast(onListen: (){
        });




  final firebase_auth.FirebaseAuth _firebaseAuth;
  final google_sign_in.GoogleSignIn _googleSignIn;
  final SharedPreferences _sharedPreferences;
  final FirebaseDynamicLinkService _firebaseDynamicLinkService;
  StreamController<bool> _streamController;


  @override
  Future<Option<User>> getSignedInUser() async =>
      optionOf(_firebaseAuth.currentUser?.toDomainUser());

@override
  Stream<bool> get authStatusChecker async*{
     yield* _streamController.stream;
  }

@override
Future<Either<AuthFailure, Unit>> sendSignInEmailLink(EmailAddress emailAddress) async{
  assert(emailAddress != null);
  try{
   final url = await _firebaseDynamicLinkService.generateLink();
   await _firebaseAuth.sendSignInLinkToEmail(email: emailAddress.getValueorException(),
        actionCodeSettings: firebase_auth.ActionCodeSettings(url:url.toString(),
          androidMinimumVersion: '16',
          androidInstallApp: false,
          androidPackageName: 'com.example.flow',
          handleCodeInApp: true,
        )).catchError((error){
     throw PlatformException(code: 'Network_Error');
    });

    _sharedPreferences.setString('emailAddress', emailAddress.getValueorException());
    return right(unit);
  }


  on PlatformException catch(error){

    if(error.code =='invalid-email'){
       return(left(AuthFailure.invalidEmailAndPasswordCombination()));
    }

    return(left(AuthFailure.serverError()));

  }



  }


@override

Future<Either<AuthFailure,Unit>> signUp(EmailAddress emailAddress,Password password)
 async{
    assert(emailAddress!=null && password!=null);
    try{

      final auth =await _firebaseAuth.createUserWithEmailAndPassword(email: emailAddress.getValueorException(),
          password: password.getValueorException()).catchError((error){
        throw PlatformException(code: 'Network_Error');
      });
      _streamController.add(true);
      return right(unit);
    }
    on PlatformException catch(e){
      if(e.code=='EMAIL_EXISTS'){
        return left(AuthFailure.emailAlreadyInUse());
      }
    }

  }

  Future<Either<AuthFailure,Unit>> loginWithEmailAndPassword(EmailAddress emailAddress,Password password) async{
    assert(emailAddress!=null && password!=null);
    try{
     await _firebaseAuth.signInWithEmailAndPassword(email: emailAddress.getValueorException(),
         password: password.getValueorException()).catchError((error){
       throw PlatformException(code: 'Network_Error');
     });
     _streamController.add(true);
     return right(unit);
    }
    on PlatformException catch(e){
      print('came here');
      if(e.code=='EMAIL_NOT_FOUND' || e.code=='INVALID_PASSWORD'){
        return left(AuthFailure.invalidEmailAndPasswordCombination());
        
      }
      else{
        return left(AuthFailure.serverError());
      }

    }
  }

  Future<Either<AuthFailure,Unit>> googleSignIn() async{
    try{
      final googleUser= await _googleSignIn.signIn();
      if(googleUser==null){
        return left(AuthFailure.cancelledByUser());
      }
      final googleAuth = await googleUser.authentication.catchError((error){
        throw PlatformException(code: 'Network_Error');
      });
      final credential = firebase_auth.GoogleAuthProvider.credential(idToken: googleAuth.idToken,
          accessToken: googleAuth.accessToken);
      await _firebaseAuth.signInWithCredential(credential).catchError((error){
        throw PlatformException(code: 'Network_Error');
      });
      _streamController.add(true);
      return right(unit);
    }on PlatformException catch(e){

        if(e.code=='INVALID_ACCOUNT'){
          return left(AuthFailure.invalidEmailAndPasswordCombination());
        }
        if(e.code=='SIGN_IN_CANCELLED'){
          return left(AuthFailure.cancelledByUser());
        }
        else{
          return left(AuthFailure.serverError());
        }
    }
   


  }
  

  Future<void> signOut() async{
    try{
      await Future.wait([_firebaseAuth.signOut(),
        _googleSignIn.signOut()]).catchError((error){
        throw PlatformException(code: 'Network_Error');
      });
      _streamController.add(true);
    }
    on PlatformException {
      return left(AuthFailure.serverError());
    }
    catch(e){
      return left(AuthFailure.serverError());
    }


  }


}

