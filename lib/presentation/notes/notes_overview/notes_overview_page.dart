import 'package:another_flushbar/flushbar_helper.dart';
import 'package:dddtodoapp/presentation/notes/notes_overview/widgets/notes_overview_body_widget.dart';
import 'package:dddtodoapp/presentation/notes/notes_overview/widgets/uncompleted_switch.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:auto_route/auto_route.dart';

import '../../../application/auth/auth_bloc.dart';
import '../../../application/notes/note_actor/note_actor_bloc.dart';
import '../../../application/notes/note_watcher/note_watcher_bloc.dart';
import '../../../injection.dart';
import '../../routes/router.gr.dart';

class NotesOverviewPage extends StatelessWidget {
  const NotesOverviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<NoteWatcherBloc>()
            ..add(
              const NoteWatcherEvent.watchAllStarted(),
            ),
        ),
        BlocProvider<NoteActorBloc>(
          create: (context) => getIt<NoteActorBloc>(),
        )
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<AuthBloc, AuthState>(
            listener: (context, state) {
              state.maybeMap(
                  unAuthenticated: (_) =>
                      context.navigateTo(const SigninRoute()),
                  orElse: () {});
            },
          ),
          BlocListener<NoteActorBloc, NoteActorState>(
            listener: (context, state) {
              state.maybeMap(
                  deleteFailure: (state) {
                    FlushbarHelper.createError(
                        duration: const Duration(seconds: 5),
                        message: state.noteFailure.map(
                          unexpected: (_) =>
                              'Unexpected error occurred while deleting, please contact support',
                          insufficientPermission: (_) =>
                              'Insufficient Permissions',
                          unableToUpdate: (_) => 'Impossible error',
                        )).show(context);
                  },
                  orElse: () {});
            },
          )
        ],
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Notes'),
            leading: IconButton(
                onPressed: () {
                  context.read<AuthBloc>().add(
                        const AuthEvent.signedOut(),
                      );
                },
                icon: const Icon(Icons.exit_to_app)),
            actions: const <Widget>[UncompletedSwitch()],
          ),
          body: const NotesOverviewBody(),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              context.navigateTo(NoteFormRoute(editedNote: null));
            },
            child: const Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
