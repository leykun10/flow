import 'package:dartz/dartz.dart';
import 'ValueFailure.dart';


Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  const emailRegex =
  r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
  if(RegExp(emailRegex).hasMatch(input)){
    return right(input);
  }
  else{
    return left(ValueFailure.invalidEmail(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validatePassword(String input) {
  const passwordRegex=r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$';
if(input.length>=6 && RegExp(passwordRegex).hasMatch(input)){
  return right(input);
}
else{
  return left(ValueFailure.shortPassword(failedValue: input));
}
}
