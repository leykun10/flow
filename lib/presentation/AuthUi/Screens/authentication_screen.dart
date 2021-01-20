
import 'package:flow/injection.dart';
import 'package:flow/presentation/AuthUi/Pages/AuthPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import  'package:flow/Domain/auth/dynamic_links_service.dart';
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
    body:AuthPage(),
        );
  }
}
