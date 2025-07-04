
import 'package:dartz/dartz.dart';
import 'package:technical_mobile/error/exceptions.dart';
import 'package:technical_mobile/features/home/domain/repositories/user_repository.dart';
import 'package:technical_mobile/util/helper.dart';

class UpdatePasswordParam {
  UpdatePasswordParam({
    required this.oldPassword,
    required this.newPassword,
    required this.confirmNewPassword,
  });

  final String oldPassword;
  final String newPassword;
  final String confirmNewPassword;
}

class UpdatePassword
    implements UseCase<Either<Failure, void>, UpdatePasswordParam> {
  UpdatePassword(this._repository);

  final UserRepository _repository;

  @override
  Future<Either<Failure, void>> call(UpdatePasswordParam params) {
    return _repository.updatePassword(
      params.oldPassword,
      params.newPassword,
      params.confirmNewPassword,
    );
  }
}
