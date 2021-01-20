import 'package:dartz/dartz.dart';
import 'package:flow/Domain/core/Exception.dart';
import 'package:flow/Domain/core/ValueFailure.dart';

abstract class ValueObject<T> {
  Either<ValueFailure<String>, String> value;

  String getValueorException(){
    return value.fold((l) => throw(UnrepresentedStateException(l)), (r) => r);
  }
  bool get isValid => value.isRight();
  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    return o is ValueObject<T> && o.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Value($value)';
}