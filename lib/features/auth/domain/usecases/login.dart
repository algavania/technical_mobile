import 'package:dartz/dartz.dart';
import 'package:technical_mobile/error/exceptions.dart';
import 'package:technical_mobile/features/auth/domain/entities/user/user_entity.dart';
import 'package:technical_mobile/features/auth/domain/repositories/auth_repository.dart';
import 'package:technical_mobile/util/helper.dart';

class LoginParams {
  LoginParams({required this.email, required this.password});

  final String email;
  final String password;
}

class Login
    implements UseCase<Either<Failure, UserEntity>, LoginParams> {
  Login(this._repository);

  final AuthRepository _repository;

  @override
  Future<Either<Failure, UserEntity>> call(LoginParams params) {
    return _repository.login(params.email, params.password);
  }
}
