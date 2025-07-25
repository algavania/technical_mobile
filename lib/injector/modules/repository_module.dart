import 'package:technical_mobile/features/auth/data/datasources/auth_remote_datasource.dart';
import 'package:technical_mobile/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:technical_mobile/features/auth/domain/repositories/auth_repository.dart';
import 'package:technical_mobile/features/home/data/datasources/user_remote_datasource.dart';
import 'package:technical_mobile/features/home/data/repositories/user_repository_impl.dart';
import 'package:technical_mobile/features/home/domain/repositories/user_repository.dart';
import 'package:technical_mobile/injector/injector.dart';

class RepositoryModule {
  RepositoryModule._();

  static void init() {
    Injector.instance
      ..registerFactory<AuthRepository>(
        () => AuthRepositoryImpl(
          Injector.instance<AuthRemoteDataSource>(),
        ),
      )
      ..registerFactory<UserRepository>(
        () => UserRepositoryImpl(
          Injector.instance<UserRemoteDataSource>(),
        ),
      );
  }
}
