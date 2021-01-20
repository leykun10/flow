import 'package:flow/Infrastructure/auth/firebase_dynamic_link_service.dart';
import 'package:injectable/injectable.dart';
import 'package:dartz/dartz.dart';
import 'dart:async';
import 'package:flow/Domain/auth/AuthFailure.dart';
import 'package:flow/Domain/auth/i_auth_facade.dart';
import 'package:flow/Domain/auth/auth_value_object.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'AuthenticationFormEvents.dart';
part 'AuthenticationFormState.dart';
part 'AuthenticationFormBloc.freezed.dart';

@lazySingleton
class AuthenticationFormBloc extends Bloc<AuthenticationFormEvent,AuthenticationFormState>{
  AuthFacade _authApi;
  FirebaseDynamicLinkService _firebaseDynamicLinkService;
  AuthenticationFormBloc(this._authApi,this._firebaseDynamicLinkService):super(AuthenticationFormState.initial());
  StreamSubscription<Map<String,Object>> _streamSubscription;
  Stream<AuthenticationFormState> mapFunctionToState(
  Future<Either<AuthFailure, Unit>> Function(
      EmailAddress emailAddress,
      Password password) forwardCall) async*{


  if(state.password.isValid && state.emailAddress.isValid){
  yield state.copyWith(emailAddress:state.emailAddress,
  password:state.password,
  authFailureOrSuccessOption: none(),
  isSubmitting:true,
  );
  final authFailureOrSuccess= await forwardCall(state.emailAddress,state.password);
  yield state.copyWith(emailAddress:state.emailAddress,
  password:state.password,
  // optionOf is equivalent to:
  // failureOrSuccess == null ? none() : some(failureOrSuccess)
    authFailureOrSuccessOption: optionOf(authFailureOrSuccess),
  isSubmitting:false,

  );
  if(state.authFailureOrSuccessOption.fold(() => false, (a) =>a.fold((l) => false, (r) => true))){
    yield AuthenticationFormState.initial();
  }

  }
else{
    yield state.copyWith(emailAddress:state.emailAddress,
        password:state.password,
        authFailureOrSuccessOption: none(),
        isSubmitting:false,
        showErrorMessages:true
    );
  }

  }


  @override
  Stream<AuthenticationFormState> mapEventToState(AuthenticationFormEvent event) async*{


    yield* event.map(
        initializeEvent: (e) async*{
          yield AuthenticationFormState.initial();
        },
        emailChanged:(e) async*{
               yield  state.copyWith(
                 emailAddress: EmailAddress(e.email),
                 authFailureOrSuccessOption: none(),
               );
        },
        passwordChanged: (e) async*{

          yield state.copyWith(password:Password(e.password),
          authFailureOrSuccessOption:none());
        },
        firebaseSignInEvent: (e) async*{
         yield* mapFunctionToState(_authApi.loginWithEmailAndPassword);
        },
        firebaseRegisterEvent: (e) async*{
         yield* mapFunctionToState(_authApi.signUp);
        },
        googleSignInEvent: (e) async*{
          yield state.copyWith(
            isSubmitting: true,
            authFailureOrSuccessOption: none(),
          );
          final failureOrSuccess = await _authApi.googleSignIn();
          yield state.copyWith(
              isSubmitting: false,
              authFailureOrSuccessOption: some(failureOrSuccess));
        },
        sendEmailLinkEvent: (e) async*{

          if(state.emailAddress.isValid)
            {
            yield state.copyWith(
              isSubmitting:true,
              isVerifying:false,
            );
            final failureOrSuccess =await _authApi.sendSignInEmailLink(state.emailAddress);
            if(failureOrSuccess.isRight()){
          _streamSubscription?.cancel();
          yield state.copyWith(
            isSubmitting:false,
            authFailureOrSuccessOption:some(failureOrSuccess),
              isVerifying:true
          );
          _streamSubscription= _firebaseDynamicLinkService.authLink().listen((event) {

          add(AuthenticationFormEvent.verificationEvent(event['emailAddress'],event[
          'isExpiredLink']));

          });

          }else{
              print('hk');
              yield state.copyWith(
                isSubmitting:false,
                authFailureOrSuccessOption:some(failureOrSuccess),
              );
            }
            
            yield state.copyWith(
              isSubmitting:false,
              authFailureOrSuccessOption:none(),
              isVerifying:false,
            );

          }
          else{

            yield state.copyWith(
                emailAddress:state.emailAddress,
                password:state.password,
                authFailureOrSuccessOption: none(),
                isSubmitting:false,
                showErrorMessages:true
            );
          }

    },
    verificationEvent: (e) async*{
          yield state.copyWith(
              emailAddress:EmailAddress(e.email),
              isExpiredLink:e.isExpiredLink
          );
          if(!e.isExpiredLink){
            _streamSubscription.cancel();
          }
          yield state.copyWith(
            isExpiredLink:null
          );

    }

       );


  }
  @override
  Future<void> close() {
    _streamSubscription.cancel();
    return super.close();
  }
}