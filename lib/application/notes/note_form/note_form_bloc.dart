import 'package:dartz/dartz.dart';
import 'package:dddtodoapp/domain/notes/i_notes_repository.dart';
import 'package:dddtodoapp/domain/notes/value_object.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

import '../../../domain/notes/note.dart';
import '../../../domain/notes/note_failure.dart';
import '../../../presentation/notes/note_form/misc/todo_item_presentation_classes.dart';

part 'note_form_bloc.freezed.dart';
part 'note_form_event.dart';
part 'note_form_state.dart';

@injectable
class NoteFormBloc extends Bloc<NoteFormEvent, NoteFormState> {
  final INoteRepository _noteRepository;
  NoteFormBloc(this._noteRepository) : super(NoteFormState.initial()) {
    on<NoteFormEvent>((event, emit) async {
      emit(await event.map(
        initialized: (e) async {
          emit(
            await e.initialNoteOption.fold(
              () => state,
              (initialNote) => state.copyWith(
                note: initialNote,
                isEditing: true,
              ),
            ),
          );
          return state;
        },
        bodyChanged: (e) {
          emit(
            state.copyWith(
                note: state.note.copyWith(body: NoteBody(e.bodyStr)),
                saveFailureOrSuccessOption: none()),
          );
          return state;
        },
        colorChanged: (e) {
          emit(
            state.copyWith(
                note: state.note.copyWith(color: NoteColor(e.color)),
                saveFailureOrSuccessOption: none()),
          );
          return state;
        },
        todosChanged: (e) {
          emit(
            state.copyWith(
                note: state.note.copyWith(
                  todos:
                      List3(e.todos.map((primitive) => primitive.toDomain())),
                ),
                saveFailureOrSuccessOption: none()),
          );
          return state;
        },
        saved: (e) async {
          Either<NoteFailure, Unit>? failureOrSuccess;
          emit(state.copyWith(
            isSaving: true,
            saveFailureOrSuccessOption: none(),
          ));
          if (state.note.failureOption.isNone()) {
            failureOrSuccess = state.isEditing
                ? await _noteRepository.update(state.note)
                : await _noteRepository.create(state.note);
          }
          emit(state.copyWith(
            isSaving: false,
            showErrorMessages: AutovalidateMode.always,
            saveFailureOrSuccessOption: optionOf(failureOrSuccess),
          ));
          return state;
        },
      ));
    });
  }
}
