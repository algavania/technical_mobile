import 'package:dartz/dartz.dart';
import 'package:technical_mobile/error/exceptions.dart';
import 'package:technical_mobile/features/auth/domain/entities/user/user_entity.dart';

abstract class AuthRepository {
  Future<Either<Failure, UserEntity>> login(String email, String password);

  Future<Either<Failure, void>> register(
    String name,
    String email,
    String password,
    String passwordConfirmation,
  );

  Future<Either<Failure, void>> logout();

  Future<Either<Failure, void>> forgotPassword(String email);

  Future<Either<Failure, void>> resetPassword(
    String email,
    String password,
    String passwordConfirmation,
    String token,
  );

  Future<Either<Failure, void>> refreshToken();
}
