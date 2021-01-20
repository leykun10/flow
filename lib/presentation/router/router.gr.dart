// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../AuthUi/Pages/emailVerification.dart';
import '../AuthUi/Pages/homepage.dart';
import '../AuthUi/Pages/local_auth_page.dart';
import '../AuthUi/Pages/splashPage.dart';
import '../AuthUi/Screens/authentication_screen.dart';

class Routes {
  static const String splashPage = '/';
  static const String authForm = '/auth-form';
  static const String authScreen = '/auth-screen';
  static const String homePage = '/home-page';
  static const String verificationPage = '/verification-page';
  static const all = <String>{
    splashPage,
    authForm,
    authScreen,
    homePage,
    verificationPage,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.splashPage, page: SplashPage),
    RouteDef(Routes.authForm, page: AuthForm),
    RouteDef(Routes.authScreen, page: AuthScreen),
    RouteDef(Routes.homePage, page: HomePage),
    RouteDef(Routes.verificationPage, page: VerificationPage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    SplashPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SplashPage(),
        settings: data,
      );
    },
    AuthForm: (data) {
      final args = data.getArgs<AuthFormArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => AuthForm(args.args),
        settings: data,
      );
    },
    AuthScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => AuthScreen(),
        settings: data,
      );
    },
    HomePage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => HomePage(),
        settings: data,
      );
    },
    VerificationPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => VerificationPage(),
        settings: data,
        fullscreenDialog: true,
      );
    },
  };
}

/// ************************************************************************
/// Navigation helper methods extension
/// *************************************************************************

extension RouterExtendedNavigatorStateX on ExtendedNavigatorState {
  Future<dynamic> pushSplashPage() => push<dynamic>(Routes.splashPage);

  Future<dynamic> pushAuthForm({
    @required dynamic args,
  }) =>
      push<dynamic>(
        Routes.authForm,
        arguments: AuthFormArguments(args: args),
      );

  Future<dynamic> pushAuthScreen() => push<dynamic>(Routes.authScreen);

  Future<dynamic> pushHomePage() => push<dynamic>(Routes.homePage);

  Future<dynamic> pushVerificationPage() =>
      push<dynamic>(Routes.verificationPage);
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// AuthForm arguments holder class
class AuthFormArguments {
  final dynamic args;
  AuthFormArguments({@required this.args});
}
