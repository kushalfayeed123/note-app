import 'package:dddtodoapp/domain/notes/i_notes_repository.dart';
import 'package:dddtodoapp/domain/notes/note_failure.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/notes/note.dart';

part 'note_actor_event.dart';
part 'note_actor_state.dart';
part 'note_actor_bloc.freezed.dart';

@injectable
class NoteActorBloc extends Bloc<NoteActorEvent, NoteActorState> {
  final INoteRepository _noteRepository;
  NoteActorBloc(this._noteRepository) : super(const Initial()) {
    on<NoteActorEvent>((event, emit) async {
      emit(
        const NoteActorState.actionInProgress(),
      );
      final possibleFailure = await _noteRepository.delete(event.note);
      emit(
        possibleFailure.fold(
          (f) => NoteActorState.deleteFailure(f),
          (_) => const NoteActorState.deleteSuccess(),
        ),
      );
    });
  }
}
