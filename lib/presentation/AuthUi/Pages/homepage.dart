import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:flow/Application/auth/AuthBloc.dart';
import 'package:flow/presentation/router/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: BlocListener<AuthBloc,AuthState>(
      listener: (context,state){
        state.map(initial: (state){}, authenticated: (state){}, unauthenticated: (state){
          ExtendedNavigator.of(context).pushAndRemoveUntil(Routes.authScreen, (route) => false);
        });
      },
      child: Column(
        children: [
          SizedBox(height: 100,),
        Center(child: Text('home',style: TextStyle(fontSize: 30,color: Colors.deepPurple),),),
        SizedBox(height: 100,),
        RaisedButton(child: Text('signOut',style:TextStyle(fontSize: 30,color: Colors.white)),onPressed: (){
          context.bloc<AuthBloc>().add(AuthEvents.signOut());},)],
      ),
    ),);
  }
}
