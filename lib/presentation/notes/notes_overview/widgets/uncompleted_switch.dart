import 'package:dddtodoapp/application/notes/note_watcher/note_watcher_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class UncompletedSwitch extends HookWidget {
  const UncompletedSwitch({super.key});

  @override
  Widget build(BuildContext context) {
    final toggleState = useState(false);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: InkResponse(
          onTap: () {
            toggleState.value = !toggleState.value;
            context.read<NoteWatcherBloc>().add(toggleState.value
                ? const NoteWatcherEvent.watchUnCompletedStarted()
                : const NoteWatcherEvent.watchAllStarted());
          },
          child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 100),
              transitionBuilder: (child, animation) => ScaleTransition(
                    scale: animation,
                    child: child,
                  ),
              child: toggleState.value
                  ? const Icon(
                      Icons.check_box_outline_blank,
                      key: Key('outline'),
                    )
                  : const Icon(
                      Icons.indeterminate_check_box,
                      key: Key('indeterminate'),
                    ))),
    );
  }
}
