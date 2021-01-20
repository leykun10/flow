/*
import 'package:flow/Post/PageBloc/PageBloc.dart';
import 'package:flow/Post/PageBloc/pageState.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../UIParts/BottomNavigationBar.dart';

import 'AnimatePage.dart';
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>{

  int index=0;
  AnimationController animationController;

  @override
  Widget build(BuildContext context) {
    PageState prevState;
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: BlocBuilder<PageBloc,PageState>(
        buildWhen: (prev,current){
          prevState=prev;
          return true;
        },
        builder: (context,state){

        return AnimatePage(currentState: state,prevState: prevState,);
      },),
      bottomNavigationBar: BottomNavigation(),
 );
  }
}


 */