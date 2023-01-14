import '../../application/auth/auth_bloc.dart';
import '../../injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../routes/router.gr.dart';

class AppWidget extends StatelessWidget {
  AppWidget({super.key});

  final _appRouter = AppRouter();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final themeData = ThemeData.dark();
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<AuthBloc>()
            ..add(
              const AuthEvent.authCheckRequested(),
            ),
        ),
      ],
      child: MaterialApp.router(
        title: 'Notes',
        debugShowCheckedModeBanner: false,
        theme: themeData.copyWith(
            textTheme: const TextTheme(
                bodyText2: TextStyle(
                    fontFamily: 'Sans Serrif', color: Colors.black54)),
            primaryColorDark: Colors.teal,
            primaryColor: Colors.teal,
            appBarTheme: const AppBarTheme(
              backgroundColor: Colors.teal,
            ),
            checkboxTheme: CheckboxThemeData(
                fillColor:
                    MaterialStateColor.resolveWith((states) => Colors.teal)),
            floatingActionButtonTheme: FloatingActionButtonThemeData(
                backgroundColor: Colors.teal.shade500),
            inputDecorationTheme: InputDecorationTheme(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            )),
        routerDelegate: _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
      ),
    );
  }
}
