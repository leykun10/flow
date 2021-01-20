import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';


@module
abstract class FirebaseInjectableModule {
  @lazySingleton
  GoogleSignIn get googleSignIn => GoogleSignIn();
  @lazySingleton
  FirebaseAuth get firebaseAuth => FirebaseAuth.instance;
  @lazySingleton
  FirebaseDynamicLinks get firebaseDynamicLinks=>FirebaseDynamicLinks.instance;
}

@module
abstract class ThirdPartyInjectableModule {

  @lazySingleton
  @preResolve
  Future<SharedPreferences> get shared_preferences => SharedPreferences.getInstance();
}