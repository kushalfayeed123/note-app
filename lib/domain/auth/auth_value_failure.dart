import 'package:freezed_annotation/freezed_annotation.dart';
part 'auth_value_failure.freezed.dart';

@freezed
class AuthValueFailure<T> with _$AuthValueFailure<T> {
  factory AuthValueFailure.invalidEmail({
    required T? failedValue,
  }) = InValidEmail<T>;
  factory AuthValueFailure.shortPassword({
    required T? failedValue,
  }) = ShortPassword<T>;
}
