import 'package:freezed_annotation/freezed_annotation.dart';
part 'failures.freezed.dart';

@freezed
class ValueFailure<T> with _$ValueFailure<T> {
  factory ValueFailure.invalidEmail({
    required T? failedValue,
  }) = InValidEmail<T>;
  factory ValueFailure.shortPassword({
    required T? failedValue,
  }) = ShortPassword<T>;
}
