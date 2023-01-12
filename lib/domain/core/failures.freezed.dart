// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ValueFailure<T> {
  T? get failedValue => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? failedValue, int max) exceedingLength,
    required TResult Function(T? failedValue) empty,
    required TResult Function(T? failedValue) multiline,
    required TResult Function(T? failedValue, int max) listTooLong,
    required TResult Function(T? failedValue) invalidEmail,
    required TResult Function(T? failedValue) shortPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T? failedValue, int max)? exceedingLength,
    TResult? Function(T? failedValue)? empty,
    TResult? Function(T? failedValue)? multiline,
    TResult? Function(T? failedValue, int max)? listTooLong,
    TResult? Function(T? failedValue)? invalidEmail,
    TResult? Function(T? failedValue)? shortPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? failedValue, int max)? exceedingLength,
    TResult Function(T? failedValue)? empty,
    TResult Function(T? failedValue)? multiline,
    TResult Function(T? failedValue, int max)? listTooLong,
    TResult Function(T? failedValue)? invalidEmail,
    TResult Function(T? failedValue)? shortPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Multiline<T> value) multiline,
    required TResult Function(listTooLong<T> value) listTooLong,
    required TResult Function(InValidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExceedingLength<T> value)? exceedingLength,
    TResult? Function(Empty<T> value)? empty,
    TResult? Function(Multiline<T> value)? multiline,
    TResult? Function(listTooLong<T> value)? listTooLong,
    TResult? Function(InValidEmail<T> value)? invalidEmail,
    TResult? Function(ShortPassword<T> value)? shortPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(listTooLong<T> value)? listTooLong,
    TResult Function(InValidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ValueFailureCopyWith<T, ValueFailure<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res, ValueFailure<T>>;
  @useResult
  $Res call({T? failedValue});
}

/// @nodoc
class _$ValueFailureCopyWithImpl<T, $Res, $Val extends ValueFailure<T>>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_value.copyWith(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExceedingLengthCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$ExceedingLengthCopyWith(_$ExceedingLength<T> value,
          $Res Function(_$ExceedingLength<T>) then) =
      __$$ExceedingLengthCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T? failedValue, int max});
}

/// @nodoc
class __$$ExceedingLengthCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$ExceedingLength<T>>
    implements _$$ExceedingLengthCopyWith<T, $Res> {
  __$$ExceedingLengthCopyWithImpl(
      _$ExceedingLength<T> _value, $Res Function(_$ExceedingLength<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
    Object? max = null,
  }) {
    return _then(_$ExceedingLength<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T?,
      max: null == max
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ExceedingLength<T> implements ExceedingLength<T> {
  _$ExceedingLength({required this.failedValue, required this.max});

  @override
  final T? failedValue;
  @override
  final int max;

  @override
  String toString() {
    return 'ValueFailure<$T>.exceedingLength(failedValue: $failedValue, max: $max)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExceedingLength<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue) &&
            (identical(other.max, max) || other.max == max));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue), max);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExceedingLengthCopyWith<T, _$ExceedingLength<T>> get copyWith =>
      __$$ExceedingLengthCopyWithImpl<T, _$ExceedingLength<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? failedValue, int max) exceedingLength,
    required TResult Function(T? failedValue) empty,
    required TResult Function(T? failedValue) multiline,
    required TResult Function(T? failedValue, int max) listTooLong,
    required TResult Function(T? failedValue) invalidEmail,
    required TResult Function(T? failedValue) shortPassword,
  }) {
    return exceedingLength(failedValue, max);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T? failedValue, int max)? exceedingLength,
    TResult? Function(T? failedValue)? empty,
    TResult? Function(T? failedValue)? multiline,
    TResult? Function(T? failedValue, int max)? listTooLong,
    TResult? Function(T? failedValue)? invalidEmail,
    TResult? Function(T? failedValue)? shortPassword,
  }) {
    return exceedingLength?.call(failedValue, max);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? failedValue, int max)? exceedingLength,
    TResult Function(T? failedValue)? empty,
    TResult Function(T? failedValue)? multiline,
    TResult Function(T? failedValue, int max)? listTooLong,
    TResult Function(T? failedValue)? invalidEmail,
    TResult Function(T? failedValue)? shortPassword,
    required TResult orElse(),
  }) {
    if (exceedingLength != null) {
      return exceedingLength(failedValue, max);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Multiline<T> value) multiline,
    required TResult Function(listTooLong<T> value) listTooLong,
    required TResult Function(InValidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
  }) {
    return exceedingLength(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExceedingLength<T> value)? exceedingLength,
    TResult? Function(Empty<T> value)? empty,
    TResult? Function(Multiline<T> value)? multiline,
    TResult? Function(listTooLong<T> value)? listTooLong,
    TResult? Function(InValidEmail<T> value)? invalidEmail,
    TResult? Function(ShortPassword<T> value)? shortPassword,
  }) {
    return exceedingLength?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(listTooLong<T> value)? listTooLong,
    TResult Function(InValidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    required TResult orElse(),
  }) {
    if (exceedingLength != null) {
      return exceedingLength(this);
    }
    return orElse();
  }
}

abstract class ExceedingLength<T> implements ValueFailure<T> {
  factory ExceedingLength(
      {required final T? failedValue,
      required final int max}) = _$ExceedingLength<T>;

  @override
  T? get failedValue;
  int get max;
  @override
  @JsonKey(ignore: true)
  _$$ExceedingLengthCopyWith<T, _$ExceedingLength<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmptyCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$EmptyCopyWith(_$Empty<T> value, $Res Function(_$Empty<T>) then) =
      __$$EmptyCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T? failedValue});
}

/// @nodoc
class __$$EmptyCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$Empty<T>>
    implements _$$EmptyCopyWith<T, $Res> {
  __$$EmptyCopyWithImpl(_$Empty<T> _value, $Res Function(_$Empty<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$Empty<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc

class _$Empty<T> implements Empty<T> {
  _$Empty({required this.failedValue});

  @override
  final T? failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.empty(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Empty<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmptyCopyWith<T, _$Empty<T>> get copyWith =>
      __$$EmptyCopyWithImpl<T, _$Empty<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? failedValue, int max) exceedingLength,
    required TResult Function(T? failedValue) empty,
    required TResult Function(T? failedValue) multiline,
    required TResult Function(T? failedValue, int max) listTooLong,
    required TResult Function(T? failedValue) invalidEmail,
    required TResult Function(T? failedValue) shortPassword,
  }) {
    return empty(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T? failedValue, int max)? exceedingLength,
    TResult? Function(T? failedValue)? empty,
    TResult? Function(T? failedValue)? multiline,
    TResult? Function(T? failedValue, int max)? listTooLong,
    TResult? Function(T? failedValue)? invalidEmail,
    TResult? Function(T? failedValue)? shortPassword,
  }) {
    return empty?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? failedValue, int max)? exceedingLength,
    TResult Function(T? failedValue)? empty,
    TResult Function(T? failedValue)? multiline,
    TResult Function(T? failedValue, int max)? listTooLong,
    TResult Function(T? failedValue)? invalidEmail,
    TResult Function(T? failedValue)? shortPassword,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Multiline<T> value) multiline,
    required TResult Function(listTooLong<T> value) listTooLong,
    required TResult Function(InValidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExceedingLength<T> value)? exceedingLength,
    TResult? Function(Empty<T> value)? empty,
    TResult? Function(Multiline<T> value)? multiline,
    TResult? Function(listTooLong<T> value)? listTooLong,
    TResult? Function(InValidEmail<T> value)? invalidEmail,
    TResult? Function(ShortPassword<T> value)? shortPassword,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(listTooLong<T> value)? listTooLong,
    TResult Function(InValidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class Empty<T> implements ValueFailure<T> {
  factory Empty({required final T? failedValue}) = _$Empty<T>;

  @override
  T? get failedValue;
  @override
  @JsonKey(ignore: true)
  _$$EmptyCopyWith<T, _$Empty<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MultilineCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$MultilineCopyWith(
          _$Multiline<T> value, $Res Function(_$Multiline<T>) then) =
      __$$MultilineCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T? failedValue});
}

/// @nodoc
class __$$MultilineCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$Multiline<T>>
    implements _$$MultilineCopyWith<T, $Res> {
  __$$MultilineCopyWithImpl(
      _$Multiline<T> _value, $Res Function(_$Multiline<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$Multiline<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc

class _$Multiline<T> implements Multiline<T> {
  _$Multiline({required this.failedValue});

  @override
  final T? failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.multiline(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Multiline<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MultilineCopyWith<T, _$Multiline<T>> get copyWith =>
      __$$MultilineCopyWithImpl<T, _$Multiline<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? failedValue, int max) exceedingLength,
    required TResult Function(T? failedValue) empty,
    required TResult Function(T? failedValue) multiline,
    required TResult Function(T? failedValue, int max) listTooLong,
    required TResult Function(T? failedValue) invalidEmail,
    required TResult Function(T? failedValue) shortPassword,
  }) {
    return multiline(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T? failedValue, int max)? exceedingLength,
    TResult? Function(T? failedValue)? empty,
    TResult? Function(T? failedValue)? multiline,
    TResult? Function(T? failedValue, int max)? listTooLong,
    TResult? Function(T? failedValue)? invalidEmail,
    TResult? Function(T? failedValue)? shortPassword,
  }) {
    return multiline?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? failedValue, int max)? exceedingLength,
    TResult Function(T? failedValue)? empty,
    TResult Function(T? failedValue)? multiline,
    TResult Function(T? failedValue, int max)? listTooLong,
    TResult Function(T? failedValue)? invalidEmail,
    TResult Function(T? failedValue)? shortPassword,
    required TResult orElse(),
  }) {
    if (multiline != null) {
      return multiline(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Multiline<T> value) multiline,
    required TResult Function(listTooLong<T> value) listTooLong,
    required TResult Function(InValidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
  }) {
    return multiline(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExceedingLength<T> value)? exceedingLength,
    TResult? Function(Empty<T> value)? empty,
    TResult? Function(Multiline<T> value)? multiline,
    TResult? Function(listTooLong<T> value)? listTooLong,
    TResult? Function(InValidEmail<T> value)? invalidEmail,
    TResult? Function(ShortPassword<T> value)? shortPassword,
  }) {
    return multiline?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(listTooLong<T> value)? listTooLong,
    TResult Function(InValidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    required TResult orElse(),
  }) {
    if (multiline != null) {
      return multiline(this);
    }
    return orElse();
  }
}

abstract class Multiline<T> implements ValueFailure<T> {
  factory Multiline({required final T? failedValue}) = _$Multiline<T>;

  @override
  T? get failedValue;
  @override
  @JsonKey(ignore: true)
  _$$MultilineCopyWith<T, _$Multiline<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$listTooLongCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$listTooLongCopyWith(
          _$listTooLong<T> value, $Res Function(_$listTooLong<T>) then) =
      __$$listTooLongCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T? failedValue, int max});
}

/// @nodoc
class __$$listTooLongCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$listTooLong<T>>
    implements _$$listTooLongCopyWith<T, $Res> {
  __$$listTooLongCopyWithImpl(
      _$listTooLong<T> _value, $Res Function(_$listTooLong<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
    Object? max = null,
  }) {
    return _then(_$listTooLong<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T?,
      max: null == max
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$listTooLong<T> implements listTooLong<T> {
  _$listTooLong({required this.failedValue, required this.max});

  @override
  final T? failedValue;
  @override
  final int max;

  @override
  String toString() {
    return 'ValueFailure<$T>.listTooLong(failedValue: $failedValue, max: $max)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$listTooLong<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue) &&
            (identical(other.max, max) || other.max == max));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue), max);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$listTooLongCopyWith<T, _$listTooLong<T>> get copyWith =>
      __$$listTooLongCopyWithImpl<T, _$listTooLong<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? failedValue, int max) exceedingLength,
    required TResult Function(T? failedValue) empty,
    required TResult Function(T? failedValue) multiline,
    required TResult Function(T? failedValue, int max) listTooLong,
    required TResult Function(T? failedValue) invalidEmail,
    required TResult Function(T? failedValue) shortPassword,
  }) {
    return listTooLong(failedValue, max);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T? failedValue, int max)? exceedingLength,
    TResult? Function(T? failedValue)? empty,
    TResult? Function(T? failedValue)? multiline,
    TResult? Function(T? failedValue, int max)? listTooLong,
    TResult? Function(T? failedValue)? invalidEmail,
    TResult? Function(T? failedValue)? shortPassword,
  }) {
    return listTooLong?.call(failedValue, max);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? failedValue, int max)? exceedingLength,
    TResult Function(T? failedValue)? empty,
    TResult Function(T? failedValue)? multiline,
    TResult Function(T? failedValue, int max)? listTooLong,
    TResult Function(T? failedValue)? invalidEmail,
    TResult Function(T? failedValue)? shortPassword,
    required TResult orElse(),
  }) {
    if (listTooLong != null) {
      return listTooLong(failedValue, max);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Multiline<T> value) multiline,
    required TResult Function(listTooLong<T> value) listTooLong,
    required TResult Function(InValidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
  }) {
    return listTooLong(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExceedingLength<T> value)? exceedingLength,
    TResult? Function(Empty<T> value)? empty,
    TResult? Function(Multiline<T> value)? multiline,
    TResult? Function(listTooLong<T> value)? listTooLong,
    TResult? Function(InValidEmail<T> value)? invalidEmail,
    TResult? Function(ShortPassword<T> value)? shortPassword,
  }) {
    return listTooLong?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(listTooLong<T> value)? listTooLong,
    TResult Function(InValidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    required TResult orElse(),
  }) {
    if (listTooLong != null) {
      return listTooLong(this);
    }
    return orElse();
  }
}

abstract class listTooLong<T> implements ValueFailure<T> {
  factory listTooLong({required final T? failedValue, required final int max}) =
      _$listTooLong<T>;

  @override
  T? get failedValue;
  int get max;
  @override
  @JsonKey(ignore: true)
  _$$listTooLongCopyWith<T, _$listTooLong<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InValidEmailCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$InValidEmailCopyWith(
          _$InValidEmail<T> value, $Res Function(_$InValidEmail<T>) then) =
      __$$InValidEmailCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T? failedValue});
}

/// @nodoc
class __$$InValidEmailCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$InValidEmail<T>>
    implements _$$InValidEmailCopyWith<T, $Res> {
  __$$InValidEmailCopyWithImpl(
      _$InValidEmail<T> _value, $Res Function(_$InValidEmail<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$InValidEmail<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc

class _$InValidEmail<T> implements InValidEmail<T> {
  _$InValidEmail({required this.failedValue});

  @override
  final T? failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidEmail(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InValidEmail<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InValidEmailCopyWith<T, _$InValidEmail<T>> get copyWith =>
      __$$InValidEmailCopyWithImpl<T, _$InValidEmail<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? failedValue, int max) exceedingLength,
    required TResult Function(T? failedValue) empty,
    required TResult Function(T? failedValue) multiline,
    required TResult Function(T? failedValue, int max) listTooLong,
    required TResult Function(T? failedValue) invalidEmail,
    required TResult Function(T? failedValue) shortPassword,
  }) {
    return invalidEmail(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T? failedValue, int max)? exceedingLength,
    TResult? Function(T? failedValue)? empty,
    TResult? Function(T? failedValue)? multiline,
    TResult? Function(T? failedValue, int max)? listTooLong,
    TResult? Function(T? failedValue)? invalidEmail,
    TResult? Function(T? failedValue)? shortPassword,
  }) {
    return invalidEmail?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? failedValue, int max)? exceedingLength,
    TResult Function(T? failedValue)? empty,
    TResult Function(T? failedValue)? multiline,
    TResult Function(T? failedValue, int max)? listTooLong,
    TResult Function(T? failedValue)? invalidEmail,
    TResult Function(T? failedValue)? shortPassword,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Multiline<T> value) multiline,
    required TResult Function(listTooLong<T> value) listTooLong,
    required TResult Function(InValidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
  }) {
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExceedingLength<T> value)? exceedingLength,
    TResult? Function(Empty<T> value)? empty,
    TResult? Function(Multiline<T> value)? multiline,
    TResult? Function(listTooLong<T> value)? listTooLong,
    TResult? Function(InValidEmail<T> value)? invalidEmail,
    TResult? Function(ShortPassword<T> value)? shortPassword,
  }) {
    return invalidEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(listTooLong<T> value)? listTooLong,
    TResult Function(InValidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class InValidEmail<T> implements ValueFailure<T> {
  factory InValidEmail({required final T? failedValue}) = _$InValidEmail<T>;

  @override
  T? get failedValue;
  @override
  @JsonKey(ignore: true)
  _$$InValidEmailCopyWith<T, _$InValidEmail<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShortPasswordCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$ShortPasswordCopyWith(
          _$ShortPassword<T> value, $Res Function(_$ShortPassword<T>) then) =
      __$$ShortPasswordCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T? failedValue});
}

/// @nodoc
class __$$ShortPasswordCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$ShortPassword<T>>
    implements _$$ShortPasswordCopyWith<T, $Res> {
  __$$ShortPasswordCopyWithImpl(
      _$ShortPassword<T> _value, $Res Function(_$ShortPassword<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$ShortPassword<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc

class _$ShortPassword<T> implements ShortPassword<T> {
  _$ShortPassword({required this.failedValue});

  @override
  final T? failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.shortPassword(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShortPassword<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShortPasswordCopyWith<T, _$ShortPassword<T>> get copyWith =>
      __$$ShortPasswordCopyWithImpl<T, _$ShortPassword<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? failedValue, int max) exceedingLength,
    required TResult Function(T? failedValue) empty,
    required TResult Function(T? failedValue) multiline,
    required TResult Function(T? failedValue, int max) listTooLong,
    required TResult Function(T? failedValue) invalidEmail,
    required TResult Function(T? failedValue) shortPassword,
  }) {
    return shortPassword(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T? failedValue, int max)? exceedingLength,
    TResult? Function(T? failedValue)? empty,
    TResult? Function(T? failedValue)? multiline,
    TResult? Function(T? failedValue, int max)? listTooLong,
    TResult? Function(T? failedValue)? invalidEmail,
    TResult? Function(T? failedValue)? shortPassword,
  }) {
    return shortPassword?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? failedValue, int max)? exceedingLength,
    TResult Function(T? failedValue)? empty,
    TResult Function(T? failedValue)? multiline,
    TResult Function(T? failedValue, int max)? listTooLong,
    TResult Function(T? failedValue)? invalidEmail,
    TResult Function(T? failedValue)? shortPassword,
    required TResult orElse(),
  }) {
    if (shortPassword != null) {
      return shortPassword(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Multiline<T> value) multiline,
    required TResult Function(listTooLong<T> value) listTooLong,
    required TResult Function(InValidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
  }) {
    return shortPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExceedingLength<T> value)? exceedingLength,
    TResult? Function(Empty<T> value)? empty,
    TResult? Function(Multiline<T> value)? multiline,
    TResult? Function(listTooLong<T> value)? listTooLong,
    TResult? Function(InValidEmail<T> value)? invalidEmail,
    TResult? Function(ShortPassword<T> value)? shortPassword,
  }) {
    return shortPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(listTooLong<T> value)? listTooLong,
    TResult Function(InValidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    required TResult orElse(),
  }) {
    if (shortPassword != null) {
      return shortPassword(this);
    }
    return orElse();
  }
}

abstract class ShortPassword<T> implements ValueFailure<T> {
  factory ShortPassword({required final T? failedValue}) = _$ShortPassword<T>;

  @override
  T? get failedValue;
  @override
  @JsonKey(ignore: true)
  _$$ShortPasswordCopyWith<T, _$ShortPassword<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
