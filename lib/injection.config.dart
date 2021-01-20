// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:get_it/get_it.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/get_it_helper.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Application/auth/AuthBloc.dart';
import 'Application/auth/AuthenticationFormBloc/AuthenticationFormBloc.dart';
import 'Domain/auth/i_auth_facade.dart';
import 'Infrastructure/auth/firebase_auth_facade.dart';
import 'Infrastructure/auth/firebase_dynamic_link_service.dart';
import 'Infrastructure/core/injection_modules.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

Future<void> $initGetIt(GetIt g, {String environment}) async {
  final gh = GetItHelper(g, environment);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  final thirdPartyInjectableModule = _$ThirdPartyInjectableModule();
  gh.lazySingleton<FirebaseAuth>(() => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<FirebaseDynamicLinks>(
      () => firebaseInjectableModule.firebaseDynamicLinks);
  gh.lazySingleton<GoogleSignIn>(() => firebaseInjectableModule.googleSignIn);
  final sharedPreferences = await thirdPartyInjectableModule.shared_preferences;
  gh.lazySingleton<SharedPreferences>(() => sharedPreferences);
  gh.lazySingleton<FirebaseDynamicLinkService>(() => FirebaseDynamicLinkService(
        g<FirebaseDynamicLinks>(),
        g<FirebaseAuth>(),
        g<SharedPreferences>(),
      ));
  gh.lazySingleton<AuthFacade>(() => FirebaseAuthFacade(
        g<FirebaseAuth>(),
        g<GoogleSignIn>(),
        g<SharedPreferences>(),
        g<FirebaseDynamicLinkService>(),
      ));
  gh.lazySingleton<AuthenticationFormBloc>(() =>
      AuthenticationFormBloc(g<AuthFacade>(), g<FirebaseDynamicLinkService>()));
  gh.lazySingleton<AuthBloc>(() => AuthBloc(g<AuthFacade>()));
}

class _$FirebaseInjectableModule extends FirebaseInjectableModule {}

class _$ThirdPartyInjectableModule extends ThirdPartyInjectableModule {}
