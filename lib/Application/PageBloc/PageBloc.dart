import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc/bloc.dart';
import  'pageEvents.dart';
import 'pageState.dart';

class PageBloc extends Bloc<PageEvents,PageState>{
        PageBloc():super(HomeState());
  @override
  Stream<PageState> mapEventToState(PageEvents event) async*{
    if(event is HomepageEvent){
      yield HomeState();
    }
    else if(event is DiscoverPageEvents){
      yield DiscoverPageState();
    }
    else if(event is NotificationPageEvents){
      yield NotificationPageState();
    }
    else if(event is LyricsPageEvents){
      yield LyricsPageState();
    }
  }
}