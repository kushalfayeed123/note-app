import 'package:dddtodoapp/domain/notes/note_failure.dart';
import 'package:flutter/material.dart';

class CriticalFailureDisplay extends StatelessWidget {
  final NoteFailure noteFailure;
  const CriticalFailureDisplay({super.key, required this.noteFailure});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            '😱',
            style: TextStyle(fontSize: 70),
          ),
          Text(
            noteFailure.maybeWhen(
                insufficientPermission: () => 'Insufficient Permissions',
                orElse: () => 'Unexpected error. \n Please contact support'),
            style: const TextStyle(fontSize: 24),
            textAlign: TextAlign.center,
          ),
          TextButton(
              onPressed: () {},
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.email,
                    color: Colors.teal.shade500,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    'I NEED HELP',
                    style: Theme.of(context)
                        .primaryTextTheme
                        .bodyText2
                        ?.copyWith(color: Colors.teal.shade500),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
