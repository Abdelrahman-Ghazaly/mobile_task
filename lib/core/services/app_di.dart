import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'app_di.config.dart';

final di = GetIt.instance;

@InjectableInit()
Future<void> injectDependencies() async => di.init();
