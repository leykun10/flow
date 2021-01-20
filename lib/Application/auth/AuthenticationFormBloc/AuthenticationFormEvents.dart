part of 'AuthenticationFormBloc.dart';

@freezed

abstract class AuthenticationFormEvent with _$AuthenticationFormEvent{
  const factory AuthenticationFormEvent.emailChanged(String email) = EmailChanged;
  const factory AuthenticationFormEvent.passwordChanged(String password) = PasswordChanged;
  const factory AuthenticationFormEvent.firebaseSignInEvent() = FirebaseSignInEvent;
  const factory AuthenticationFormEvent.firebaseRegisterEvent() = RegisterEvent;
  const factory AuthenticationFormEvent.googleSignInEvent() = GoogleSignInEvent;
  const factory AuthenticationFormEvent.sendEmailLinkEvent() = SendEmailLinkEvent;
  const factory AuthenticationFormEvent.verificationEvent(String email,bool isExpiredLink) =VerificationEvent;
  const factory AuthenticationFormEvent.initializeEvent() = InitializeEvent;
}

