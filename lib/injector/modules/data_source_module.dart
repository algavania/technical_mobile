import 'package:technical_mobile/features/auth/data/datasources/auth_remote_datasource.dart';
import 'package:technical_mobile/features/home/data/datasources/user_remote_datasource.dart';
import 'package:technical_mobile/injector/injector.dart';

class DataSourceModule {
  DataSourceModule._();

  static void init() {
    Injector.instance
      ..registerLazySingleton<AuthRemoteDataSource>(
        AuthRemoteDataSourceImpl.new,
      )
      ..registerLazySingleton<UserRemoteDataSource>(
        UserRemoteDataSourceImpl.new,
      );
  }
}
