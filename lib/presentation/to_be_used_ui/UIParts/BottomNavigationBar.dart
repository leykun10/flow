/*
import 'package:flutter/material.dart';

import 'package:flow/Post/PageBloc/pageEvents.dart';
import 'package:flow/Post/PageBloc/PageBloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int index = 0;
  @override
  Widget build(BuildContext context) {

    return BottomNavigationBar(
      currentIndex: index,
      backgroundColor: Theme.of(context).bottomNavigationBarTheme.backgroundColor,
      selectedIconTheme: Theme.of(context).iconTheme,
      unselectedItemColor: Colors.black,
      showUnselectedLabels: true,

      onTap: (int){
        if(int==0){
          BlocProvider.of<PageBloc>(context).add(HomepageEvent());
        }
       else if(int==1){
          BlocProvider.of<PageBloc>(context).add(DiscoverPageEvents());
        }
        else if(int==2){
          BlocProvider.of<PageBloc>(context).add(NotificationPageEvents());
        }
        else if(int==3){
          BlocProvider.of<PageBloc>(context).add(LyricsPageEvents());
        }
        setState(() {
          index=int;
        });
      },
      items: [BottomNavigationBarItem(icon: Icon(Icons.home,size: 30,),title: Text('')),
              BottomNavigationBarItem(icon: Icon(Icons.search,size: 30,),title: Text('')),
              BottomNavigationBarItem(icon: Icon(Icons.notifications,size:30),title: Text('')),
              BottomNavigationBarItem(icon: Icon(Icons.library_music,size: 30,),title: Text(''))    ],);
  }
}



 */