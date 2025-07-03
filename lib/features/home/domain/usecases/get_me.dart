import 'package:dartz/dartz.dart';
import 'package:technical_mobile/error/exceptions.dart';
import 'package:technical_mobile/features/auth/domain/entities/user/user_entity.dart';
import 'package:technical_mobile/features/home/domain/repositories/user_repository.dart';
import 'package:technical_mobile/util/helper.dart';

class GetMe
    implements UseCase<Either<Failure, UserEntity>, None<void>> {
  GetMe(this._repository);

  final UserRepository _repository;

  @override
  Future<Either<Failure, UserEntity>> call(None<void> _) {
    return _repository.getMe();
  }
}
