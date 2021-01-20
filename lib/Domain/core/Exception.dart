import 'package:flow/Domain/core/ValueFailure.dart';

class UnrepresentedStateException extends Error{
 ValueFailure _valueFailure;
 UnrepresentedStateException(this._valueFailure);


  @override
  String toString() {
    // TODO: implement toString
    return 'UnrepresentedState$_valueFailure';
  }
}