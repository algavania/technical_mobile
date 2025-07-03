import 'package:dartz/dartz.dart';
import 'package:technical_mobile/error/exceptions.dart';
import 'package:technical_mobile/features/auth/domain/repositories/auth_repository.dart';
import 'package:technical_mobile/util/helper.dart';

class ForgotPasswordParams {
  ForgotPasswordParams({required this.email});

  final String email;
}

class ForgotPassword
    implements UseCase<Either<Failure, void>, ForgotPasswordParams> {
  ForgotPassword(this._repository);

  final AuthRepository _repository;

  @override
  Future<Either<Failure, void>> call(ForgotPasswordParams params) {
    return _repository.forgotPassword(params.email);
  }
}
