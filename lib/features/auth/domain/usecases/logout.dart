import 'package:dartz/dartz.dart';
import 'package:technical_mobile/error/exceptions.dart';
import 'package:technical_mobile/features/auth/domain/repositories/auth_repository.dart';
import 'package:technical_mobile/util/helper.dart';

class Logout implements UseCase<Either<Failure, void>, None<void>> {
  Logout(this._repository);

  final AuthRepository _repository;

  @override
  Future<Either<Failure, void>> call(None<void> params) {
    return _repository.logout();
  }
}
