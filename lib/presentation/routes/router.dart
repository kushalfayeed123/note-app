import 'package:auto_route/annotations.dart';
import 'package:dddtodoapp/presentation/sign_in/sign_in_page.dart';
import 'package:dddtodoapp/presentation/splash/splash_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: SplashPage,
      initial: true,
    ),
    AutoRoute(page: SigninPage),
  ],
)
class $AppRouter {}
