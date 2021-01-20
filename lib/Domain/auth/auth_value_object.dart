import 'package:flow/Domain/core/ValueValidators.dart';
import 'package:flow/Domain/core/ValueObjects.dart';
import 'package:flow/Domain/core/ValueFailure.dart';
import 'package:dartz/dartz.dart';
class EmailAddress extends ValueObject{
  @override
  final Either<ValueFailure<String>, String> value;

  factory EmailAddress(String input){
    assert(input!=null);
    return EmailAddress._(validateEmailAddress(input));
  }

  EmailAddress._(this.value);


}
class Password extends ValueObject{
  @override
  final Either<ValueFailure<String>, String> value;

  factory Password(String input){
    assert(input!=null);
    return Password._(validatePassword(input));
  }

  Password._(this.value);

}
class UniqueId extends ValueObject{
  @override
  final Either<ValueFailure<String>, String> value;

  factory UniqueId(String input){
    assert(input!=null);
    return UniqueId._(right(input));
  }

  UniqueId._(this.value);

}
