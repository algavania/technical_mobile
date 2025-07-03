import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:technical_mobile/error/exceptions.dart';
import 'package:technical_mobile/features/auth/domain/entities/user/user_entity.dart';
import 'package:technical_mobile/features/home/domain/repositories/user_repository.dart';
import 'package:technical_mobile/util/helper.dart';

class UpdateUserParam {
  UpdateUserParam({
    required this.name,
    required this.email,
    required this.image,
  });

  final String name;
  final String email;
  final File? image;
}

class UpdateUser
    implements UseCase<Either<Failure, UserEntity>, UpdateUserParam> {
  UpdateUser(this._repository);

  final UserRepository _repository;

  @override
  Future<Either<Failure, UserEntity>> call(UpdateUserParam params) {
    return _repository.updateUser(
      params.name,
      params.email,
      params.image,
    );
  }
}
