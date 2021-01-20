
import 'package:flow/Infrastructure/auth/firebase_dynamic_link_service.dart';
import'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flow/injection.dart';
import 'package:flow/presentation/core/my_app_widget.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
   await Firebase.initializeApp();
  EquatableConfig.stringify = kDebugMode;
  Bloc.observer = BlocObserver();
  await configuration(Environment.prod);
  getIt<FirebaseDynamicLinkService>().initDynamicLinks();
  runApp(MyApp());
}


