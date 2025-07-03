import 'package:technical_mobile/features/auth/domain/repositories/auth_repository.dart';
import 'package:technical_mobile/features/auth/domain/usecases/usecases.dart';
import 'package:technical_mobile/injector/injector.dart';

class UseCasesModule {
  UseCasesModule._();

  static void init() {
    /// Auth Use Cases
    Injector.instance
      ..registerLazySingleton<Login>(
        () => Login(
          Injector.instance<AuthRepository>(),
        ),
      )
      ..registerLazySingleton<Logout>(
        () => Logout(
          Injector.instance<AuthRepository>(),
        ),
      )
      ..registerLazySingleton<Register>(
        () => Register(
          Injector.instance<AuthRepository>(),
        ),
      )
      ..registerLazySingleton<ForgotPassword>(
            () => ForgotPassword(
          Injector.instance<AuthRepository>(),
        ),
      )
      ..registerLazySingleton<ResetPassword>(
        () => ResetPassword(
          Injector.instance<AuthRepository>(),
        ),
      );
  }
}
