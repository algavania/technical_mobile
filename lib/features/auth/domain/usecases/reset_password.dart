import 'package:dartz/dartz.dart';
import 'package:technical_mobile/error/exceptions.dart';
import 'package:technical_mobile/features/auth/domain/repositories/auth_repository.dart';
import 'package:technical_mobile/util/helper.dart';

class ResetPasswordParams {
  ResetPasswordParams({
    required this.email,
    required this.password,
    required this.passwordConfirmation,
    required this.token,
  });

  final String email;
  final String password;
  final String passwordConfirmation;
  final String token;
}

class ResetPassword
    implements UseCase<Either<Failure, void>, ResetPasswordParams> {
  ResetPassword(this._repository);

  final AuthRepository _repository;

  @override
  Future<Either<Failure, void>> call(ResetPasswordParams params) {
    return _repository.resetPassword(
      params.email,
      params.password,
      params.passwordConfirmation,
      params.token,
    );
  }
}
