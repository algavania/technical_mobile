import 'package:get_it/get_it.dart';
import 'package:technical_mobile/injector/modules/bloc_module.dart';
import 'package:technical_mobile/injector/modules/data_source_module.dart';
import 'package:technical_mobile/injector/modules/repository_module.dart';
import 'package:technical_mobile/injector/modules/use_cases_module.dart';

class Injector {
  Injector._();

  static GetIt instance = GetIt.instance;

  static void init() {
    RepositoryModule.init();
    BlocModule.init();
    DataSourceModule.init();
    UseCasesModule.init();
  }

  static void reset() {
    instance.reset();
  }

  static void resetLazySingleton() {
    instance.resetLazySingleton();
  }
}
