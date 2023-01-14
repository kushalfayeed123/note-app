import 'package:dartz/dartz.dart';
import 'package:dddtodoapp/domain/core/value_transformers.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:kt_dart/collection.dart';
import '../core/value_validators.dart';

import '../core/failures.dart';
import '../core/value_objects.dart';

class NoteBody extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 1000;

  factory NoteBody(String input) {
    return NoteBody._(
      validateMaxStringLength(input, maxLength).flatMap(validateStringNotEmpty),
    );
  }
  const NoteBody._(this.value);
}

class TodoName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  static const maxLength = 30;
  factory TodoName(String input) {
    return TodoName._(
      validateMaxStringLength(input, maxLength)
          .flatMap(validateStringNotEmpty)
          .flatMap(validateSingleLine),
    );
  }
  const TodoName._(this.value);
}

class NoteColor extends ValueObject<Color> {
  static const List<Color> predefinedColors = [
    Color(0xfffafafa), // canvas
    Color(0xfffa8072), // salmon
    Color(0xFFFFE57E), // mustard
    Color(0xffd0f0c0), // tea
    Color(0xFFFFCED9), // flamingo
    Color(0xFFAA9273), // tortilla
    Color(0xfffffdd0), // cream
  ];
  @override
  final Either<ValueFailure<Color>, Color> value;
  factory NoteColor(Color input) {
    return NoteColor._(
      right(makeColorOpaque(input)),
    );
  }
  const NoteColor._(this.value);
}

class List3<T> extends ValueObject<KtList<T>> {
  @override
  final Either<ValueFailure<KtList<T>>, KtList<T>> value;
  static const maxLength = 3;
  factory List3(KtList<T> input) {
    return List3._(
      validateMaxListLength(input, maxLength),
    );
  }
  const List3._(this.value);

  int get length {
    return value.getOrElse(() => emptyList()).size;
  }

  bool get isFull {
    return length == maxLength;
  }
}
