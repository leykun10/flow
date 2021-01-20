/*
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'DiscoverPage.dart';
import 'HomePage.dart';
import 'LyricsPage.dart';
import 'NotificationPage.dart';
import 'package:flow/Post/PageBloc/pageState.dart';

class AnimatePage extends StatefulWidget {
  final  currentState;
  final  prevState;
  AnimatePage({this.currentState,this.prevState});
  @override
  _AnimatePageState createState() => _AnimatePageState();
}

class _AnimatePageState extends State<AnimatePage> with TickerProviderStateMixin{
  AnimationController animationController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController =AnimationController(duration: Duration(milliseconds: 452),vsync: this);

  }


  Widget mapCurrentStateToWidget(){
    if(widget.currentState is HomeState){
      return HomePage();
    }
    else if(widget.currentState is NotificationPageState){
      return NotificationPage();
    }
    else if(widget.currentState is LyricsPageState){
      return LyricsPage();
    }
    else if(widget.currentState is DiscoverPageState){
      return DiscoverPage();
    }
    return null;
  }
  Widget mapPrevStateToWidget(){
    if(widget.prevState == null){
      return HomePage();
    }
    else if(widget.prevState is HomeState){
      return HomePage();
    }
    else if(widget.prevState is NotificationPageState){
      return NotificationPage();
    }
    else if(widget.prevState is LyricsPageState){
      return LyricsPage();
    }
    else if(widget.prevState is DiscoverPageState){
      return DiscoverPage();
    }
    return null;

  }
  bool animate(){

    if(animationController.isCompleted){
      animationController.reset();
      animationController.forward();
      return true;
    }
    else if(widget.prevState == null  && widget.currentState is HomeState){
         return false;
    }
    else if(widget.prevState == widget.currentState){
       return false;
    }
    animationController.forward();
   return true;
  }

@override
  Widget build(BuildContext context) {

    bool animateTo = animate();
    return Stack(
      children: [
      AnimatedBuilder(
          animation: animationController,
          builder:(context,child) =>Transform.translate(
            offset: animateTo?Offset((MediaQuery.of(context).size.width)*(animationController.value-1),0):
            Offset(0,0),
            child: Transform(
                transform: Matrix4.identity()..setEntry(3, 2, 0.001)..rotateY(3.14/2*(1-animationController.value)),
                alignment: Alignment.centerRight,
                child: mapCurrentStateToWidget()),
          )
      ),
      AnimatedBuilder(
            animation: animationController,
           builder:(context,child) =>Transform.translate(
             offset: animateTo?Offset((MediaQuery.of(context).size.width)*animationController.value,0):
             Offset(0,0),
             child: Transform(
      transform: Matrix4.identity()..setEntry(3, 2, 0.001)..rotateY(-3.14/2*animationController.value),
      alignment: Alignment.centerLeft,
      child: mapPrevStateToWidget()),
           )
        ),
    ],);
  }
  @override
  void dispose() {
    // TODO: implement dispose
    animationController.dispose();
    super.dispose();
  }
}


 */