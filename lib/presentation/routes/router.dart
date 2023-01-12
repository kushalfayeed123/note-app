import 'package:auto_route/annotations.dart';
import 'package:dddtodoapp/presentation/notes/note_form/note_form_page.dart';
import 'package:dddtodoapp/presentation/notes/notes_overview/notes_overview_page.dart';
import '../sign_in/sign_in_page.dart';
import '../splash/splash_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    MaterialRoute(
      page: SplashPage,
      initial: true,
    ),
    MaterialRoute(page: SigninPage),
    MaterialRoute(page: NotesOverviewPage),
    MaterialRoute(page: NoteFormPage, fullscreenDialog: true),
  ],
)
class $AppRouter {}
