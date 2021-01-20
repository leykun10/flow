import 'package:dartz/dartz.dart';
import 'dart:async';
import 'package:flow/Domain/auth/i_auth_facade.dart';
import 'package:flow/Domain/auth/user.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
part 'AuthState.dart';
part 'AuthEvents.dart';
part  'AuthBloc.freezed.dart';
@lazySingleton
class AuthBloc extends Bloc<AuthEvents,AuthState> {
  final AuthFacade authFacade;
  AuthBloc(this.authFacade) :super(AuthState.initial()){
    _streamSubscription=authFacade.authStatusChecker.listen((event) async{
      add(AuthEvents.authCheckRequestd());
    });
  }
  StreamSubscription<bool> _streamSubscription;

  @override
  Stream<AuthState> mapEventToState(AuthEvents event) async* {
    yield* event.map(authCheckRequestd: (_) async*{
     final userOption = await authFacade.getSignedInUser();
     yield userOption.fold(() => const AuthState.unauthenticated(), (a) => const AuthState.authenticated());
    }, signOut: (_) async*{
      await authFacade.signOut();
      yield AuthState.unauthenticated();
    });

  }

  @override
  Future<void> close() {
    _streamSubscription.cancel();
    return super.close();
  }
}


