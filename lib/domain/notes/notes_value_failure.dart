import 'package:freezed_annotation/freezed_annotation.dart';
part 'notes_value_failure.freezed.dart';

@freezed
class NoteValueFailure<T> with _$NoteValueFailure<T> {
  factory NoteValueFailure.exceedingLength({
    required T? failedValue,
    required int max,
  }) = ExceedingLength<T>;
  factory NoteValueFailure.empty({
    required T? failedValue,
  }) = Empty<T>;
  factory NoteValueFailure.multiline({
    required T? failedValue,
  }) = Multiline<T>;
  factory NoteValueFailure.listTooLong({
    required T? failedValue,
    required int max,
  }) = listTooLong<T>;
}
