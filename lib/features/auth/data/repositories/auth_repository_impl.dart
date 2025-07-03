import 'package:dartz/dartz.dart';
import 'package:technical_mobile/error/exceptions.dart';
import 'package:technical_mobile/features/auth/data/datasources/auth_remote_datasource.dart';
import 'package:technical_mobile/features/auth/domain/entities/user/user_entity.dart';
import 'package:technical_mobile/features/auth/domain/repositories/auth_repository.dart';
import 'package:technical_mobile/util/helper.dart';

class AuthRepositoryImpl extends AuthRepository {
  AuthRepositoryImpl(this.dataSource);

  final AuthRemoteDataSource dataSource;

  @override
  Future<Either<Failure, void>> forgotPassword(String email) {
    return safeCall(() => dataSource.forgotPassword(email));
  }

  @override
  Future<Either<Failure, UserEntity>> login(String email, String password) {
    return safeCall(() => dataSource.login(email, password));
  }

  @override
  Future<Either<Failure, void>> logout() {
    return safeCall(dataSource.logout);
  }

  @override
  Future<Either<Failure, void>> register(
    String name,
    String email,
    String password,
    String passwordConfirmation,
  ) {
    return safeCall(
      () => dataSource.register(name, email, password, passwordConfirmation),
    );
  }

  @override
  Future<Either<Failure, void>> resetPassword(
    String email,
    String password,
    String passwordConfirmation,
    String token,
  ) {
    return safeCall(
      () => dataSource.resetPassword(
        email,
        password,
        passwordConfirmation,
        token,
      ),
    );
  }

  @override
  Future<Either<Failure, void>> refreshToken() {
    return safeCall(dataSource.refreshToken);
  }
}
