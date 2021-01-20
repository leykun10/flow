import 'package:flow/Application/auth/AuthBloc.dart';
import 'package:flow/Application/auth/AuthenticationFormBloc/AuthenticationFormBloc.dart';
import 'package:flow/Domain/auth/i_auth_facade.dart';
import 'package:flow/presentation/AuthUi/Pages/AuthPage.dart';
import 'package:flow/presentation/AuthUi/Pages/homepage.dart';
import 'package:flow/presentation/router/router.gr.dart' as generated;
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flow/injection.dart';
import 'package:flow/presentation/AuthUi/Pages/emailVerification.dart';
import 'package:flow/presentation/AuthUi/Pages/local_auth_page.dart';
import 'package:flow/presentation/AuthUi/Screens/authentication_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flow/presentation/AuthUi/Pages/splashPage.dart';
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers:[BlocProvider(
        create: (context)=>getIt<AuthBloc>()..add(const AuthEvents.authCheckRequestd()),),
    BlocProvider(
    create: (context)=>getIt<AuthenticationFormBloc>()),
      ] ,
        child: MaterialApp(
            builder: ExtendedNavigator(router: generated.Router(),),
            theme: ThemeData.light().copyWith(
                hintColor: Colors.white70,
                unselectedWidgetColor: Colors.black38,
                primaryColor: Colors.white,
                focusColor: Colors.white,
                buttonTheme: ButtonThemeData(
                    textTheme: ButtonTextTheme.accent
                )
            ),
          ),

    );
  }
}
