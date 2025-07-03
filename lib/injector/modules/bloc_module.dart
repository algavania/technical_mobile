import 'package:technical_mobile/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:technical_mobile/injector/injector.dart';

class BlocModule {
  BlocModule._();

  static void init() {
    Injector.instance.registerLazySingleton<AuthBloc>(
      AuthBloc.new,
    );
  }
}
