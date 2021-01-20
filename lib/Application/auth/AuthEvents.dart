
part of 'AuthBloc.dart';
@freezed
abstract class AuthEvents with _$AuthEvents{

  const factory AuthEvents.authCheckRequestd() =AuthCheckRequested;
  const factory AuthEvents.signOut() = SignOut;
}