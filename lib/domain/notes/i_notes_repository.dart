import 'package:dartz/dartz.dart';
import 'package:dddtodoapp/domain/notes/note_failure.dart';
import 'package:kt_dart/collection.dart';

import 'note.dart';

abstract class INoteRepository {
  // watch notes
  // watch uncompleted notes
  // CREAT UPDATE DELETE notes

  Stream<Either<NoteFailure, KtList<Note>>> watchAll();
  Stream<Either<NoteFailure, KtList<Note>>> watchUncompleted();
  Future<Either<NoteFailure, Unit>> create(Note note);
  Future<Either<NoteFailure, Unit>> update(Note note);
  Future<Either<NoteFailure, Unit>> delete(Note note);
}
