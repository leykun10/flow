import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flow/Domain/auth/auth_value_object.dart';
part 'user.freezed.dart';
@freezed
abstract class User with _$User {
  const factory User({
    @required UniqueId id,
  }) = _User;
}