import 'package:technical_mobile/features/auth/domain/repositories/auth_repository.dart';
import 'package:technical_mobile/features/auth/domain/usecases/usecases.dart';
import 'package:technical_mobile/features/home/domain/repositories/user_repository.dart';
import 'package:technical_mobile/features/home/domain/usecases/usecases.dart';
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
      )
      // User Use Cases
      ..registerLazySingleton<GetUser>(
        () => GetUser(
          Injector.instance<UserRepository>(),
        ),
      )
      ..registerLazySingleton<UpdateUser>(
        () => UpdateUser(
          Injector.instance<UserRepository>(),
        ),
      )
      ..registerLazySingleton<GetUsers>(
        () => GetUsers(
          Injector.instance<UserRepository>(),
        ),
      )
      ..registerLazySingleton<GetMe>(
        () => GetMe(
          Injector.instance<UserRepository>(),
        ),
      );
  }
}
