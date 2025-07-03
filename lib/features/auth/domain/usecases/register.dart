import 'package:dartz/dartz.dart';
import 'package:technical_mobile/error/exceptions.dart';
import 'package:technical_mobile/features/auth/domain/repositories/auth_repository.dart';
import 'package:technical_mobile/util/helper.dart';

class RegisterParams {
  RegisterParams({
    required this.name,
    required this.email,
    required this.password,
    required this.passwordConfirmation,
  });

  final String name;
  final String email;
  final String password;
  final String passwordConfirmation;
}

class Register implements UseCase<Either<Failure, void>, RegisterParams> {
  Register(this._repository);

  final AuthRepository _repository;

  @override
  Future<Either<Failure, void>> call(RegisterParams params) {
    return _repository.register(
      params.name,
      params.email,
      params.password,
      params.passwordConfirmation,
    );
  }
}
