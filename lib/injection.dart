import 'injection.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final getIt = GetIt.instance;

@InjectableInit(asExtension: false)
void configureDependencies(String env) => init(getIt, environment: env);
