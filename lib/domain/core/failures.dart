import 'package:freezed_annotation/freezed_annotation.dart';
part 'failures.freezed.dart';

@freezed
class ValueFailure<T> with _$ValueFailure<T> {
  factory ValueFailure.auth({
    required T? failedValue,
  }) = _Auth<T>;
  factory ValueFailure.notes({
    required T? failedValue,
    int? maxLength,
  }) = _Notes<T>;
}
