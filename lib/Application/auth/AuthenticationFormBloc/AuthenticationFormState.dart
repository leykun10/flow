
part of 'AuthenticationFormBloc.dart';

@freezed
abstract class AuthenticationFormState with _$AuthenticationFormState {


  const factory AuthenticationFormState({
    @required EmailAddress emailAddress,
    @required Password password,
    @required bool showErrorMessages,
    @required bool isVerifying,
    @required bool isSubmitting,
     bool isExpiredLink,

    @required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
  }) = _AuthenticationFormState;


  factory AuthenticationFormState.initial() => AuthenticationFormState(
    emailAddress: EmailAddress(''),
    password: Password(''),
    showErrorMessages: false,
    isVerifying: false,
    isSubmitting: false,
    isExpiredLink: null,
    authFailureOrSuccessOption: none(),
  );






}

