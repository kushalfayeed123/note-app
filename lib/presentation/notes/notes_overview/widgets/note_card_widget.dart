import 'package:auto_route/auto_route.dart';
import 'package:dddtodoapp/application/notes/note_actor/note_actor_bloc.dart';
import 'package:dddtodoapp/domain/notes/todo_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/collection.dart';

import '../../../../domain/notes/note.dart';
import '../../../routes/router.gr.dart';

class NoteCard extends StatelessWidget {
  final Note note;

  const NoteCard({super.key, required this.note});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: note.color.getOrCrash(),
      child: InkWell(
        onTap: () {
          context.navigateTo(NoteFormRoute(editedNote: note));
        },
        onLongPress: () {
          final noteActorBloc = context.read<NoteActorBloc>();
          _showDeletionDialog(context, noteActorBloc);
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                note.body.getOrCrash(),
                style: const TextStyle(fontSize: 18),
              ),
              if (note.todos.length > 0) ...[
                const SizedBox(
                  height: 10,
                ),
                Wrap(
                  spacing: 8,
                  children: [
                    ...note.todos
                        .getOrCrash()
                        .map(
                          (todo) => TodoDisplay(
                            todo: todo,
                          ),
                        )
                        .iter
                  ],
                )
              ]
            ],
          ),
        ),
      ),
    );
  }

  void _showDeletionDialog(BuildContext context, NoteActorBloc noteActorBloc) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: const Text('Selected Note'),
              content: Text(
                note.body.getOrCrash(),
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: Text(
                    'CANCEL',
                    style: TextStyle(color: Colors.teal.shade400),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    noteActorBloc.add(NoteActorEvent.deleted(note));
                    Navigator.pop(context);
                  },
                  child: Text(
                    'DELETE',
                    style: TextStyle(color: Colors.teal.shade400),
                  ),
                ),
              ],
            ));
  }
}

class TodoDisplay extends StatelessWidget {
  final TodoItem todo;
  const TodoDisplay({super.key, required this.todo});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (todo.done)
          const Icon(
            Icons.check_box,
            color: Colors.teal,
          ),
        if (!todo.done)
          const Icon(
            Icons.check_box_outline_blank,
            color: Colors.teal,
          ),
        Text(todo.name.getOrCrash())
      ],
    );
  }
}
