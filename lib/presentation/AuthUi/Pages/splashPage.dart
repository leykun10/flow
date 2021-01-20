import 'package:auto_route/auto_route.dart';
import 'package:flow/Application/auth/AuthBloc.dart';
import 'package:flow/presentation/router/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc,AuthState>(listener: (context,state){
      state.map(initial: (state){
        ExtendedNavigator.of(context).pushAndRemoveUntil(Routes.splashPage, (route) => false);
      }, authenticated: (state){
        ExtendedNavigator.of(context).pushAndRemoveUntil(Routes.homePage, (route) => false);

      }, unauthenticated: (state){
        ExtendedNavigator.of(context).pushAndRemoveUntil(Routes.authScreen, (route) => false);

      } );
    },
    child: Scaffold(body: Center(child: CircularProgressIndicator(),),),);
  }
}
