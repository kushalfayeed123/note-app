import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:dddtodoapp/domain/notes/i_notes_repository.dart';
import 'package:dddtodoapp/domain/notes/note_failure.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

import '../../../domain/notes/note.dart';

part 'note_watcher_event.dart';
part 'note_watcher_state.dart';
part 'note_watcher_bloc.freezed.dart';

@injectable
class NoteWatcherBloc extends Bloc<NoteWatcherEvent, NoteWatcherState> {
  final INoteRepository _noteRepository;
  StreamSubscription<Either<NoteFailure, KtList<Note>>>? noteStreamSubscrition;
  NoteWatcherBloc(this._noteRepository) : super(const _Initial()) {
    on<NoteWatcherEvent>((event, emit) async {
      emit(await event.map(watchAllStarted: (e) async {
        emit(const NoteWatcherState.loadInProgress());
        await noteStreamSubscrition?.cancel();
        noteStreamSubscrition = _noteRepository.watchAll().listen(
            (failureOrNotes) =>
                add(NoteWatcherEvent.notesReceived(failureOrNotes)));

        return state;
      }, watchUnCompletedStarted: (e) async {
        emit(const NoteWatcherState.loadInProgress());
        await noteStreamSubscrition?.cancel();
        noteStreamSubscrition = _noteRepository.watchUncompleted().listen(
            (failureOrNotes) =>
                add(NoteWatcherEvent.notesReceived(failureOrNotes)));

        return state;
      }, notesReceived: (e) {
        emit(
          e.failureOrNotes.fold(
            (f) => NoteWatcherState.loadFailure(f),
            (notes) => NoteWatcherState.loadSuccess(notes),
          ),
        );
        return state;
      }));
    });
  }

  @override
  Future<void> close() async {
    await noteStreamSubscrition?.cancel();

    return super.close();
  }
}
