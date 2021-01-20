// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'AuthenticationFormBloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AuthenticationFormEventTearOff {
  const _$AuthenticationFormEventTearOff();

// ignore: unused_element
  EmailChanged emailChanged(String email) {
    return EmailChanged(
      email,
    );
  }

// ignore: unused_element
  PasswordChanged passwordChanged(String password) {
    return PasswordChanged(
      password,
    );
  }

// ignore: unused_element
  FirebaseSignInEvent firebaseSignInEvent() {
    return const FirebaseSignInEvent();
  }

// ignore: unused_element
  RegisterEvent firebaseRegisterEvent() {
    return const RegisterEvent();
  }

// ignore: unused_element
  GoogleSignInEvent googleSignInEvent() {
    return const GoogleSignInEvent();
  }

// ignore: unused_element
  SendEmailLinkEvent sendEmailLinkEvent() {
    return const SendEmailLinkEvent();
  }

// ignore: unused_element
  VerificationEvent verificationEvent(String email, bool isExpiredLink) {
    return VerificationEvent(
      email,
      isExpiredLink,
    );
  }

// ignore: unused_element
  InitializeEvent initializeEvent() {
    return const InitializeEvent();
  }
}

/// @nodoc
// ignore: unused_element
const $AuthenticationFormEvent = _$AuthenticationFormEventTearOff();

/// @nodoc
mixin _$AuthenticationFormEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String email),
    @required Result passwordChanged(String password),
    @required Result firebaseSignInEvent(),
    @required Result firebaseRegisterEvent(),
    @required Result googleSignInEvent(),
    @required Result sendEmailLinkEvent(),
    @required Result verificationEvent(String email, bool isExpiredLink),
    @required Result initializeEvent(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String email),
    Result passwordChanged(String password),
    Result firebaseSignInEvent(),
    Result firebaseRegisterEvent(),
    Result googleSignInEvent(),
    Result sendEmailLinkEvent(),
    Result verificationEvent(String email, bool isExpiredLink),
    Result initializeEvent(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result firebaseSignInEvent(FirebaseSignInEvent value),
    @required Result firebaseRegisterEvent(RegisterEvent value),
    @required Result googleSignInEvent(GoogleSignInEvent value),
    @required Result sendEmailLinkEvent(SendEmailLinkEvent value),
    @required Result verificationEvent(VerificationEvent value),
    @required Result initializeEvent(InitializeEvent value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result firebaseSignInEvent(FirebaseSignInEvent value),
    Result firebaseRegisterEvent(RegisterEvent value),
    Result googleSignInEvent(GoogleSignInEvent value),
    Result sendEmailLinkEvent(SendEmailLinkEvent value),
    Result verificationEvent(VerificationEvent value),
    Result initializeEvent(InitializeEvent value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $AuthenticationFormEventCopyWith<$Res> {
  factory $AuthenticationFormEventCopyWith(AuthenticationFormEvent value,
          $Res Function(AuthenticationFormEvent) then) =
      _$AuthenticationFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthenticationFormEventCopyWithImpl<$Res>
    implements $AuthenticationFormEventCopyWith<$Res> {
  _$AuthenticationFormEventCopyWithImpl(this._value, this._then);

  final AuthenticationFormEvent _value;
  // ignore: unused_field
  final $Res Function(AuthenticationFormEvent) _then;
}

/// @nodoc
abstract class $EmailChangedCopyWith<$Res> {
  factory $EmailChangedCopyWith(
          EmailChanged value, $Res Function(EmailChanged) then) =
      _$EmailChangedCopyWithImpl<$Res>;
  $Res call({String email});
}

/// @nodoc
class _$EmailChangedCopyWithImpl<$Res>
    extends _$AuthenticationFormEventCopyWithImpl<$Res>
    implements $EmailChangedCopyWith<$Res> {
  _$EmailChangedCopyWithImpl(
      EmailChanged _value, $Res Function(EmailChanged) _then)
      : super(_value, (v) => _then(v as EmailChanged));

  @override
  EmailChanged get _value => super._value as EmailChanged;

  @override
  $Res call({
    Object email = freezed,
  }) {
    return _then(EmailChanged(
      email == freezed ? _value.email : email as String,
    ));
  }
}

/// @nodoc
class _$EmailChanged implements EmailChanged {
  const _$EmailChanged(this.email) : assert(email != null);

  @override
  final String email;

  @override
  String toString() {
    return 'AuthenticationFormEvent.emailChanged(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EmailChanged &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(email);

  @override
  $EmailChangedCopyWith<EmailChanged> get copyWith =>
      _$EmailChangedCopyWithImpl<EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String email),
    @required Result passwordChanged(String password),
    @required Result firebaseSignInEvent(),
    @required Result firebaseRegisterEvent(),
    @required Result googleSignInEvent(),
    @required Result sendEmailLinkEvent(),
    @required Result verificationEvent(String email, bool isExpiredLink),
    @required Result initializeEvent(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(firebaseSignInEvent != null);
    assert(firebaseRegisterEvent != null);
    assert(googleSignInEvent != null);
    assert(sendEmailLinkEvent != null);
    assert(verificationEvent != null);
    assert(initializeEvent != null);
    return emailChanged(email);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String email),
    Result passwordChanged(String password),
    Result firebaseSignInEvent(),
    Result firebaseRegisterEvent(),
    Result googleSignInEvent(),
    Result sendEmailLinkEvent(),
    Result verificationEvent(String email, bool isExpiredLink),
    Result initializeEvent(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result firebaseSignInEvent(FirebaseSignInEvent value),
    @required Result firebaseRegisterEvent(RegisterEvent value),
    @required Result googleSignInEvent(GoogleSignInEvent value),
    @required Result sendEmailLinkEvent(SendEmailLinkEvent value),
    @required Result verificationEvent(VerificationEvent value),
    @required Result initializeEvent(InitializeEvent value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(firebaseSignInEvent != null);
    assert(firebaseRegisterEvent != null);
    assert(googleSignInEvent != null);
    assert(sendEmailLinkEvent != null);
    assert(verificationEvent != null);
    assert(initializeEvent != null);
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result firebaseSignInEvent(FirebaseSignInEvent value),
    Result firebaseRegisterEvent(RegisterEvent value),
    Result googleSignInEvent(GoogleSignInEvent value),
    Result sendEmailLinkEvent(SendEmailLinkEvent value),
    Result verificationEvent(VerificationEvent value),
    Result initializeEvent(InitializeEvent value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class EmailChanged implements AuthenticationFormEvent {
  const factory EmailChanged(String email) = _$EmailChanged;

  String get email;
  $EmailChangedCopyWith<EmailChanged> get copyWith;
}

/// @nodoc
abstract class $PasswordChangedCopyWith<$Res> {
  factory $PasswordChangedCopyWith(
          PasswordChanged value, $Res Function(PasswordChanged) then) =
      _$PasswordChangedCopyWithImpl<$Res>;
  $Res call({String password});
}

/// @nodoc
class _$PasswordChangedCopyWithImpl<$Res>
    extends _$AuthenticationFormEventCopyWithImpl<$Res>
    implements $PasswordChangedCopyWith<$Res> {
  _$PasswordChangedCopyWithImpl(
      PasswordChanged _value, $Res Function(PasswordChanged) _then)
      : super(_value, (v) => _then(v as PasswordChanged));

  @override
  PasswordChanged get _value => super._value as PasswordChanged;

  @override
  $Res call({
    Object password = freezed,
  }) {
    return _then(PasswordChanged(
      password == freezed ? _value.password : password as String,
    ));
  }
}

/// @nodoc
class _$PasswordChanged implements PasswordChanged {
  const _$PasswordChanged(this.password) : assert(password != null);

  @override
  final String password;

  @override
  String toString() {
    return 'AuthenticationFormEvent.passwordChanged(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PasswordChanged &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(password);

  @override
  $PasswordChangedCopyWith<PasswordChanged> get copyWith =>
      _$PasswordChangedCopyWithImpl<PasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String email),
    @required Result passwordChanged(String password),
    @required Result firebaseSignInEvent(),
    @required Result firebaseRegisterEvent(),
    @required Result googleSignInEvent(),
    @required Result sendEmailLinkEvent(),
    @required Result verificationEvent(String email, bool isExpiredLink),
    @required Result initializeEvent(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(firebaseSignInEvent != null);
    assert(firebaseRegisterEvent != null);
    assert(googleSignInEvent != null);
    assert(sendEmailLinkEvent != null);
    assert(verificationEvent != null);
    assert(initializeEvent != null);
    return passwordChanged(password);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String email),
    Result passwordChanged(String password),
    Result firebaseSignInEvent(),
    Result firebaseRegisterEvent(),
    Result googleSignInEvent(),
    Result sendEmailLinkEvent(),
    Result verificationEvent(String email, bool isExpiredLink),
    Result initializeEvent(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (passwordChanged != null) {
      return passwordChanged(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result firebaseSignInEvent(FirebaseSignInEvent value),
    @required Result firebaseRegisterEvent(RegisterEvent value),
    @required Result googleSignInEvent(GoogleSignInEvent value),
    @required Result sendEmailLinkEvent(SendEmailLinkEvent value),
    @required Result verificationEvent(VerificationEvent value),
    @required Result initializeEvent(InitializeEvent value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(firebaseSignInEvent != null);
    assert(firebaseRegisterEvent != null);
    assert(googleSignInEvent != null);
    assert(sendEmailLinkEvent != null);
    assert(verificationEvent != null);
    assert(initializeEvent != null);
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result firebaseSignInEvent(FirebaseSignInEvent value),
    Result firebaseRegisterEvent(RegisterEvent value),
    Result googleSignInEvent(GoogleSignInEvent value),
    Result sendEmailLinkEvent(SendEmailLinkEvent value),
    Result verificationEvent(VerificationEvent value),
    Result initializeEvent(InitializeEvent value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordChanged implements AuthenticationFormEvent {
  const factory PasswordChanged(String password) = _$PasswordChanged;

  String get password;
  $PasswordChangedCopyWith<PasswordChanged> get copyWith;
}

/// @nodoc
abstract class $FirebaseSignInEventCopyWith<$Res> {
  factory $FirebaseSignInEventCopyWith(
          FirebaseSignInEvent value, $Res Function(FirebaseSignInEvent) then) =
      _$FirebaseSignInEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$FirebaseSignInEventCopyWithImpl<$Res>
    extends _$AuthenticationFormEventCopyWithImpl<$Res>
    implements $FirebaseSignInEventCopyWith<$Res> {
  _$FirebaseSignInEventCopyWithImpl(
      FirebaseSignInEvent _value, $Res Function(FirebaseSignInEvent) _then)
      : super(_value, (v) => _then(v as FirebaseSignInEvent));

  @override
  FirebaseSignInEvent get _value => super._value as FirebaseSignInEvent;
}

/// @nodoc
class _$FirebaseSignInEvent implements FirebaseSignInEvent {
  const _$FirebaseSignInEvent();

  @override
  String toString() {
    return 'AuthenticationFormEvent.firebaseSignInEvent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FirebaseSignInEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String email),
    @required Result passwordChanged(String password),
    @required Result firebaseSignInEvent(),
    @required Result firebaseRegisterEvent(),
    @required Result googleSignInEvent(),
    @required Result sendEmailLinkEvent(),
    @required Result verificationEvent(String email, bool isExpiredLink),
    @required Result initializeEvent(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(firebaseSignInEvent != null);
    assert(firebaseRegisterEvent != null);
    assert(googleSignInEvent != null);
    assert(sendEmailLinkEvent != null);
    assert(verificationEvent != null);
    assert(initializeEvent != null);
    return firebaseSignInEvent();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String email),
    Result passwordChanged(String password),
    Result firebaseSignInEvent(),
    Result firebaseRegisterEvent(),
    Result googleSignInEvent(),
    Result sendEmailLinkEvent(),
    Result verificationEvent(String email, bool isExpiredLink),
    Result initializeEvent(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (firebaseSignInEvent != null) {
      return firebaseSignInEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result firebaseSignInEvent(FirebaseSignInEvent value),
    @required Result firebaseRegisterEvent(RegisterEvent value),
    @required Result googleSignInEvent(GoogleSignInEvent value),
    @required Result sendEmailLinkEvent(SendEmailLinkEvent value),
    @required Result verificationEvent(VerificationEvent value),
    @required Result initializeEvent(InitializeEvent value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(firebaseSignInEvent != null);
    assert(firebaseRegisterEvent != null);
    assert(googleSignInEvent != null);
    assert(sendEmailLinkEvent != null);
    assert(verificationEvent != null);
    assert(initializeEvent != null);
    return firebaseSignInEvent(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result firebaseSignInEvent(FirebaseSignInEvent value),
    Result firebaseRegisterEvent(RegisterEvent value),
    Result googleSignInEvent(GoogleSignInEvent value),
    Result sendEmailLinkEvent(SendEmailLinkEvent value),
    Result verificationEvent(VerificationEvent value),
    Result initializeEvent(InitializeEvent value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (firebaseSignInEvent != null) {
      return firebaseSignInEvent(this);
    }
    return orElse();
  }
}

abstract class FirebaseSignInEvent implements AuthenticationFormEvent {
  const factory FirebaseSignInEvent() = _$FirebaseSignInEvent;
}

/// @nodoc
abstract class $RegisterEventCopyWith<$Res> {
  factory $RegisterEventCopyWith(
          RegisterEvent value, $Res Function(RegisterEvent) then) =
      _$RegisterEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$RegisterEventCopyWithImpl<$Res>
    extends _$AuthenticationFormEventCopyWithImpl<$Res>
    implements $RegisterEventCopyWith<$Res> {
  _$RegisterEventCopyWithImpl(
      RegisterEvent _value, $Res Function(RegisterEvent) _then)
      : super(_value, (v) => _then(v as RegisterEvent));

  @override
  RegisterEvent get _value => super._value as RegisterEvent;
}

/// @nodoc
class _$RegisterEvent implements RegisterEvent {
  const _$RegisterEvent();

  @override
  String toString() {
    return 'AuthenticationFormEvent.firebaseRegisterEvent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is RegisterEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String email),
    @required Result passwordChanged(String password),
    @required Result firebaseSignInEvent(),
    @required Result firebaseRegisterEvent(),
    @required Result googleSignInEvent(),
    @required Result sendEmailLinkEvent(),
    @required Result verificationEvent(String email, bool isExpiredLink),
    @required Result initializeEvent(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(firebaseSignInEvent != null);
    assert(firebaseRegisterEvent != null);
    assert(googleSignInEvent != null);
    assert(sendEmailLinkEvent != null);
    assert(verificationEvent != null);
    assert(initializeEvent != null);
    return firebaseRegisterEvent();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String email),
    Result passwordChanged(String password),
    Result firebaseSignInEvent(),
    Result firebaseRegisterEvent(),
    Result googleSignInEvent(),
    Result sendEmailLinkEvent(),
    Result verificationEvent(String email, bool isExpiredLink),
    Result initializeEvent(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (firebaseRegisterEvent != null) {
      return firebaseRegisterEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result firebaseSignInEvent(FirebaseSignInEvent value),
    @required Result firebaseRegisterEvent(RegisterEvent value),
    @required Result googleSignInEvent(GoogleSignInEvent value),
    @required Result sendEmailLinkEvent(SendEmailLinkEvent value),
    @required Result verificationEvent(VerificationEvent value),
    @required Result initializeEvent(InitializeEvent value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(firebaseSignInEvent != null);
    assert(firebaseRegisterEvent != null);
    assert(googleSignInEvent != null);
    assert(sendEmailLinkEvent != null);
    assert(verificationEvent != null);
    assert(initializeEvent != null);
    return firebaseRegisterEvent(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result firebaseSignInEvent(FirebaseSignInEvent value),
    Result firebaseRegisterEvent(RegisterEvent value),
    Result googleSignInEvent(GoogleSignInEvent value),
    Result sendEmailLinkEvent(SendEmailLinkEvent value),
    Result verificationEvent(VerificationEvent value),
    Result initializeEvent(InitializeEvent value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (firebaseRegisterEvent != null) {
      return firebaseRegisterEvent(this);
    }
    return orElse();
  }
}

abstract class RegisterEvent implements AuthenticationFormEvent {
  const factory RegisterEvent() = _$RegisterEvent;
}

/// @nodoc
abstract class $GoogleSignInEventCopyWith<$Res> {
  factory $GoogleSignInEventCopyWith(
          GoogleSignInEvent value, $Res Function(GoogleSignInEvent) then) =
      _$GoogleSignInEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$GoogleSignInEventCopyWithImpl<$Res>
    extends _$AuthenticationFormEventCopyWithImpl<$Res>
    implements $GoogleSignInEventCopyWith<$Res> {
  _$GoogleSignInEventCopyWithImpl(
      GoogleSignInEvent _value, $Res Function(GoogleSignInEvent) _then)
      : super(_value, (v) => _then(v as GoogleSignInEvent));

  @override
  GoogleSignInEvent get _value => super._value as GoogleSignInEvent;
}

/// @nodoc
class _$GoogleSignInEvent implements GoogleSignInEvent {
  const _$GoogleSignInEvent();

  @override
  String toString() {
    return 'AuthenticationFormEvent.googleSignInEvent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GoogleSignInEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String email),
    @required Result passwordChanged(String password),
    @required Result firebaseSignInEvent(),
    @required Result firebaseRegisterEvent(),
    @required Result googleSignInEvent(),
    @required Result sendEmailLinkEvent(),
    @required Result verificationEvent(String email, bool isExpiredLink),
    @required Result initializeEvent(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(firebaseSignInEvent != null);
    assert(firebaseRegisterEvent != null);
    assert(googleSignInEvent != null);
    assert(sendEmailLinkEvent != null);
    assert(verificationEvent != null);
    assert(initializeEvent != null);
    return googleSignInEvent();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String email),
    Result passwordChanged(String password),
    Result firebaseSignInEvent(),
    Result firebaseRegisterEvent(),
    Result googleSignInEvent(),
    Result sendEmailLinkEvent(),
    Result verificationEvent(String email, bool isExpiredLink),
    Result initializeEvent(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (googleSignInEvent != null) {
      return googleSignInEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result firebaseSignInEvent(FirebaseSignInEvent value),
    @required Result firebaseRegisterEvent(RegisterEvent value),
    @required Result googleSignInEvent(GoogleSignInEvent value),
    @required Result sendEmailLinkEvent(SendEmailLinkEvent value),
    @required Result verificationEvent(VerificationEvent value),
    @required Result initializeEvent(InitializeEvent value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(firebaseSignInEvent != null);
    assert(firebaseRegisterEvent != null);
    assert(googleSignInEvent != null);
    assert(sendEmailLinkEvent != null);
    assert(verificationEvent != null);
    assert(initializeEvent != null);
    return googleSignInEvent(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result firebaseSignInEvent(FirebaseSignInEvent value),
    Result firebaseRegisterEvent(RegisterEvent value),
    Result googleSignInEvent(GoogleSignInEvent value),
    Result sendEmailLinkEvent(SendEmailLinkEvent value),
    Result verificationEvent(VerificationEvent value),
    Result initializeEvent(InitializeEvent value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (googleSignInEvent != null) {
      return googleSignInEvent(this);
    }
    return orElse();
  }
}

abstract class GoogleSignInEvent implements AuthenticationFormEvent {
  const factory GoogleSignInEvent() = _$GoogleSignInEvent;
}

/// @nodoc
abstract class $SendEmailLinkEventCopyWith<$Res> {
  factory $SendEmailLinkEventCopyWith(
          SendEmailLinkEvent value, $Res Function(SendEmailLinkEvent) then) =
      _$SendEmailLinkEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SendEmailLinkEventCopyWithImpl<$Res>
    extends _$AuthenticationFormEventCopyWithImpl<$Res>
    implements $SendEmailLinkEventCopyWith<$Res> {
  _$SendEmailLinkEventCopyWithImpl(
      SendEmailLinkEvent _value, $Res Function(SendEmailLinkEvent) _then)
      : super(_value, (v) => _then(v as SendEmailLinkEvent));

  @override
  SendEmailLinkEvent get _value => super._value as SendEmailLinkEvent;
}

/// @nodoc
class _$SendEmailLinkEvent implements SendEmailLinkEvent {
  const _$SendEmailLinkEvent();

  @override
  String toString() {
    return 'AuthenticationFormEvent.sendEmailLinkEvent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SendEmailLinkEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String email),
    @required Result passwordChanged(String password),
    @required Result firebaseSignInEvent(),
    @required Result firebaseRegisterEvent(),
    @required Result googleSignInEvent(),
    @required Result sendEmailLinkEvent(),
    @required Result verificationEvent(String email, bool isExpiredLink),
    @required Result initializeEvent(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(firebaseSignInEvent != null);
    assert(firebaseRegisterEvent != null);
    assert(googleSignInEvent != null);
    assert(sendEmailLinkEvent != null);
    assert(verificationEvent != null);
    assert(initializeEvent != null);
    return sendEmailLinkEvent();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String email),
    Result passwordChanged(String password),
    Result firebaseSignInEvent(),
    Result firebaseRegisterEvent(),
    Result googleSignInEvent(),
    Result sendEmailLinkEvent(),
    Result verificationEvent(String email, bool isExpiredLink),
    Result initializeEvent(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (sendEmailLinkEvent != null) {
      return sendEmailLinkEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result firebaseSignInEvent(FirebaseSignInEvent value),
    @required Result firebaseRegisterEvent(RegisterEvent value),
    @required Result googleSignInEvent(GoogleSignInEvent value),
    @required Result sendEmailLinkEvent(SendEmailLinkEvent value),
    @required Result verificationEvent(VerificationEvent value),
    @required Result initializeEvent(InitializeEvent value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(firebaseSignInEvent != null);
    assert(firebaseRegisterEvent != null);
    assert(googleSignInEvent != null);
    assert(sendEmailLinkEvent != null);
    assert(verificationEvent != null);
    assert(initializeEvent != null);
    return sendEmailLinkEvent(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result firebaseSignInEvent(FirebaseSignInEvent value),
    Result firebaseRegisterEvent(RegisterEvent value),
    Result googleSignInEvent(GoogleSignInEvent value),
    Result sendEmailLinkEvent(SendEmailLinkEvent value),
    Result verificationEvent(VerificationEvent value),
    Result initializeEvent(InitializeEvent value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (sendEmailLinkEvent != null) {
      return sendEmailLinkEvent(this);
    }
    return orElse();
  }
}

abstract class SendEmailLinkEvent implements AuthenticationFormEvent {
  const factory SendEmailLinkEvent() = _$SendEmailLinkEvent;
}

/// @nodoc
abstract class $VerificationEventCopyWith<$Res> {
  factory $VerificationEventCopyWith(
          VerificationEvent value, $Res Function(VerificationEvent) then) =
      _$VerificationEventCopyWithImpl<$Res>;
  $Res call({String email, bool isExpiredLink});
}

/// @nodoc
class _$VerificationEventCopyWithImpl<$Res>
    extends _$AuthenticationFormEventCopyWithImpl<$Res>
    implements $VerificationEventCopyWith<$Res> {
  _$VerificationEventCopyWithImpl(
      VerificationEvent _value, $Res Function(VerificationEvent) _then)
      : super(_value, (v) => _then(v as VerificationEvent));

  @override
  VerificationEvent get _value => super._value as VerificationEvent;

  @override
  $Res call({
    Object email = freezed,
    Object isExpiredLink = freezed,
  }) {
    return _then(VerificationEvent(
      email == freezed ? _value.email : email as String,
      isExpiredLink == freezed ? _value.isExpiredLink : isExpiredLink as bool,
    ));
  }
}

/// @nodoc
class _$VerificationEvent implements VerificationEvent {
  const _$VerificationEvent(this.email, this.isExpiredLink)
      : assert(email != null),
        assert(isExpiredLink != null);

  @override
  final String email;
  @override
  final bool isExpiredLink;

  @override
  String toString() {
    return 'AuthenticationFormEvent.verificationEvent(email: $email, isExpiredLink: $isExpiredLink)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is VerificationEvent &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.isExpiredLink, isExpiredLink) ||
                const DeepCollectionEquality()
                    .equals(other.isExpiredLink, isExpiredLink)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(isExpiredLink);

  @override
  $VerificationEventCopyWith<VerificationEvent> get copyWith =>
      _$VerificationEventCopyWithImpl<VerificationEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String email),
    @required Result passwordChanged(String password),
    @required Result firebaseSignInEvent(),
    @required Result firebaseRegisterEvent(),
    @required Result googleSignInEvent(),
    @required Result sendEmailLinkEvent(),
    @required Result verificationEvent(String email, bool isExpiredLink),
    @required Result initializeEvent(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(firebaseSignInEvent != null);
    assert(firebaseRegisterEvent != null);
    assert(googleSignInEvent != null);
    assert(sendEmailLinkEvent != null);
    assert(verificationEvent != null);
    assert(initializeEvent != null);
    return verificationEvent(email, isExpiredLink);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String email),
    Result passwordChanged(String password),
    Result firebaseSignInEvent(),
    Result firebaseRegisterEvent(),
    Result googleSignInEvent(),
    Result sendEmailLinkEvent(),
    Result verificationEvent(String email, bool isExpiredLink),
    Result initializeEvent(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (verificationEvent != null) {
      return verificationEvent(email, isExpiredLink);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result firebaseSignInEvent(FirebaseSignInEvent value),
    @required Result firebaseRegisterEvent(RegisterEvent value),
    @required Result googleSignInEvent(GoogleSignInEvent value),
    @required Result sendEmailLinkEvent(SendEmailLinkEvent value),
    @required Result verificationEvent(VerificationEvent value),
    @required Result initializeEvent(InitializeEvent value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(firebaseSignInEvent != null);
    assert(firebaseRegisterEvent != null);
    assert(googleSignInEvent != null);
    assert(sendEmailLinkEvent != null);
    assert(verificationEvent != null);
    assert(initializeEvent != null);
    return verificationEvent(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result firebaseSignInEvent(FirebaseSignInEvent value),
    Result firebaseRegisterEvent(RegisterEvent value),
    Result googleSignInEvent(GoogleSignInEvent value),
    Result sendEmailLinkEvent(SendEmailLinkEvent value),
    Result verificationEvent(VerificationEvent value),
    Result initializeEvent(InitializeEvent value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (verificationEvent != null) {
      return verificationEvent(this);
    }
    return orElse();
  }
}

abstract class VerificationEvent implements AuthenticationFormEvent {
  const factory VerificationEvent(String email, bool isExpiredLink) =
      _$VerificationEvent;

  String get email;
  bool get isExpiredLink;
  $VerificationEventCopyWith<VerificationEvent> get copyWith;
}

/// @nodoc
abstract class $InitializeEventCopyWith<$Res> {
  factory $InitializeEventCopyWith(
          InitializeEvent value, $Res Function(InitializeEvent) then) =
      _$InitializeEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitializeEventCopyWithImpl<$Res>
    extends _$AuthenticationFormEventCopyWithImpl<$Res>
    implements $InitializeEventCopyWith<$Res> {
  _$InitializeEventCopyWithImpl(
      InitializeEvent _value, $Res Function(InitializeEvent) _then)
      : super(_value, (v) => _then(v as InitializeEvent));

  @override
  InitializeEvent get _value => super._value as InitializeEvent;
}

/// @nodoc
class _$InitializeEvent implements InitializeEvent {
  const _$InitializeEvent();

  @override
  String toString() {
    return 'AuthenticationFormEvent.initializeEvent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InitializeEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String email),
    @required Result passwordChanged(String password),
    @required Result firebaseSignInEvent(),
    @required Result firebaseRegisterEvent(),
    @required Result googleSignInEvent(),
    @required Result sendEmailLinkEvent(),
    @required Result verificationEvent(String email, bool isExpiredLink),
    @required Result initializeEvent(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(firebaseSignInEvent != null);
    assert(firebaseRegisterEvent != null);
    assert(googleSignInEvent != null);
    assert(sendEmailLinkEvent != null);
    assert(verificationEvent != null);
    assert(initializeEvent != null);
    return initializeEvent();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String email),
    Result passwordChanged(String password),
    Result firebaseSignInEvent(),
    Result firebaseRegisterEvent(),
    Result googleSignInEvent(),
    Result sendEmailLinkEvent(),
    Result verificationEvent(String email, bool isExpiredLink),
    Result initializeEvent(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initializeEvent != null) {
      return initializeEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result firebaseSignInEvent(FirebaseSignInEvent value),
    @required Result firebaseRegisterEvent(RegisterEvent value),
    @required Result googleSignInEvent(GoogleSignInEvent value),
    @required Result sendEmailLinkEvent(SendEmailLinkEvent value),
    @required Result verificationEvent(VerificationEvent value),
    @required Result initializeEvent(InitializeEvent value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(firebaseSignInEvent != null);
    assert(firebaseRegisterEvent != null);
    assert(googleSignInEvent != null);
    assert(sendEmailLinkEvent != null);
    assert(verificationEvent != null);
    assert(initializeEvent != null);
    return initializeEvent(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result firebaseSignInEvent(FirebaseSignInEvent value),
    Result firebaseRegisterEvent(RegisterEvent value),
    Result googleSignInEvent(GoogleSignInEvent value),
    Result sendEmailLinkEvent(SendEmailLinkEvent value),
    Result verificationEvent(VerificationEvent value),
    Result initializeEvent(InitializeEvent value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initializeEvent != null) {
      return initializeEvent(this);
    }
    return orElse();
  }
}

abstract class InitializeEvent implements AuthenticationFormEvent {
  const factory InitializeEvent() = _$InitializeEvent;
}

/// @nodoc
class _$AuthenticationFormStateTearOff {
  const _$AuthenticationFormStateTearOff();

// ignore: unused_element
  _AuthenticationFormState call(
      {@required EmailAddress emailAddress,
      @required Password password,
      @required bool showErrorMessages,
      @required bool isVerifying,
      @required bool isSubmitting,
      bool isExpiredLink,
      @required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption}) {
    return _AuthenticationFormState(
      emailAddress: emailAddress,
      password: password,
      showErrorMessages: showErrorMessages,
      isVerifying: isVerifying,
      isSubmitting: isSubmitting,
      isExpiredLink: isExpiredLink,
      authFailureOrSuccessOption: authFailureOrSuccessOption,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AuthenticationFormState = _$AuthenticationFormStateTearOff();

/// @nodoc
mixin _$AuthenticationFormState {
  EmailAddress get emailAddress;
  Password get password;
  bool get showErrorMessages;
  bool get isVerifying;
  bool get isSubmitting;
  bool get isExpiredLink;
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption;

  $AuthenticationFormStateCopyWith<AuthenticationFormState> get copyWith;
}

/// @nodoc
abstract class $AuthenticationFormStateCopyWith<$Res> {
  factory $AuthenticationFormStateCopyWith(AuthenticationFormState value,
          $Res Function(AuthenticationFormState) then) =
      _$AuthenticationFormStateCopyWithImpl<$Res>;
  $Res call(
      {EmailAddress emailAddress,
      Password password,
      bool showErrorMessages,
      bool isVerifying,
      bool isSubmitting,
      bool isExpiredLink,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class _$AuthenticationFormStateCopyWithImpl<$Res>
    implements $AuthenticationFormStateCopyWith<$Res> {
  _$AuthenticationFormStateCopyWithImpl(this._value, this._then);

  final AuthenticationFormState _value;
  // ignore: unused_field
  final $Res Function(AuthenticationFormState) _then;

  @override
  $Res call({
    Object emailAddress = freezed,
    Object password = freezed,
    Object showErrorMessages = freezed,
    Object isVerifying = freezed,
    Object isSubmitting = freezed,
    Object isExpiredLink = freezed,
    Object authFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as EmailAddress,
      password: password == freezed ? _value.password : password as Password,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isVerifying:
          isVerifying == freezed ? _value.isVerifying : isVerifying as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      isExpiredLink: isExpiredLink == freezed
          ? _value.isExpiredLink
          : isExpiredLink as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$AuthenticationFormStateCopyWith<$Res>
    implements $AuthenticationFormStateCopyWith<$Res> {
  factory _$AuthenticationFormStateCopyWith(_AuthenticationFormState value,
          $Res Function(_AuthenticationFormState) then) =
      __$AuthenticationFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {EmailAddress emailAddress,
      Password password,
      bool showErrorMessages,
      bool isVerifying,
      bool isSubmitting,
      bool isExpiredLink,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class __$AuthenticationFormStateCopyWithImpl<$Res>
    extends _$AuthenticationFormStateCopyWithImpl<$Res>
    implements _$AuthenticationFormStateCopyWith<$Res> {
  __$AuthenticationFormStateCopyWithImpl(_AuthenticationFormState _value,
      $Res Function(_AuthenticationFormState) _then)
      : super(_value, (v) => _then(v as _AuthenticationFormState));

  @override
  _AuthenticationFormState get _value =>
      super._value as _AuthenticationFormState;

  @override
  $Res call({
    Object emailAddress = freezed,
    Object password = freezed,
    Object showErrorMessages = freezed,
    Object isVerifying = freezed,
    Object isSubmitting = freezed,
    Object isExpiredLink = freezed,
    Object authFailureOrSuccessOption = freezed,
  }) {
    return _then(_AuthenticationFormState(
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as EmailAddress,
      password: password == freezed ? _value.password : password as Password,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isVerifying:
          isVerifying == freezed ? _value.isVerifying : isVerifying as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      isExpiredLink: isExpiredLink == freezed
          ? _value.isExpiredLink
          : isExpiredLink as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc
class _$_AuthenticationFormState implements _AuthenticationFormState {
  const _$_AuthenticationFormState(
      {@required this.emailAddress,
      @required this.password,
      @required this.showErrorMessages,
      @required this.isVerifying,
      @required this.isSubmitting,
      this.isExpiredLink,
      @required this.authFailureOrSuccessOption})
      : assert(emailAddress != null),
        assert(password != null),
        assert(showErrorMessages != null),
        assert(isVerifying != null),
        assert(isSubmitting != null),
        assert(authFailureOrSuccessOption != null);

  @override
  final EmailAddress emailAddress;
  @override
  final Password password;
  @override
  final bool showErrorMessages;
  @override
  final bool isVerifying;
  @override
  final bool isSubmitting;
  @override
  final bool isExpiredLink;
  @override
  final Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption;

  @override
  String toString() {
    return 'AuthenticationFormState(emailAddress: $emailAddress, password: $password, showErrorMessages: $showErrorMessages, isVerifying: $isVerifying, isSubmitting: $isSubmitting, isExpiredLink: $isExpiredLink, authFailureOrSuccessOption: $authFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AuthenticationFormState &&
            (identical(other.emailAddress, emailAddress) ||
                const DeepCollectionEquality()
                    .equals(other.emailAddress, emailAddress)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isVerifying, isVerifying) ||
                const DeepCollectionEquality()
                    .equals(other.isVerifying, isVerifying)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.isExpiredLink, isExpiredLink) ||
                const DeepCollectionEquality()
                    .equals(other.isExpiredLink, isExpiredLink)) &&
            (identical(other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(emailAddress) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isVerifying) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(isExpiredLink) ^
      const DeepCollectionEquality().hash(authFailureOrSuccessOption);

  @override
  _$AuthenticationFormStateCopyWith<_AuthenticationFormState> get copyWith =>
      __$AuthenticationFormStateCopyWithImpl<_AuthenticationFormState>(
          this, _$identity);
}

abstract class _AuthenticationFormState implements AuthenticationFormState {
  const factory _AuthenticationFormState(
          {@required
              EmailAddress emailAddress,
          @required
              Password password,
          @required
              bool showErrorMessages,
          @required
              bool isVerifying,
          @required
              bool isSubmitting,
          bool isExpiredLink,
          @required
              Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption}) =
      _$_AuthenticationFormState;

  @override
  EmailAddress get emailAddress;
  @override
  Password get password;
  @override
  bool get showErrorMessages;
  @override
  bool get isVerifying;
  @override
  bool get isSubmitting;
  @override
  bool get isExpiredLink;
  @override
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption;
  @override
  _$AuthenticationFormStateCopyWith<_AuthenticationFormState> get copyWith;
}
