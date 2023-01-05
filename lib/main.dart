import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import 'firebase_options.dart';
import 'injection.dart';
import 'presentation/core/app_widget.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies(Environment.prod);

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(AppWidget());
}
