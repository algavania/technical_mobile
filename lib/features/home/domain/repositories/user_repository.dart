import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:technical_mobile/error/exceptions.dart';
import 'package:technical_mobile/features/auth/domain/entities/user/user_entity.dart';
import 'package:technical_mobile/features/home/domain/entities/user_pagination_entity.dart';

abstract class UserRepository {
  Future<Either<Failure, UserPaginationEntity>> getUsers(
    int limit,
    int page,
    String? search,
  );

  Future<Either<Failure, UserEntity>> getUser(int id);

  Future<Either<Failure, UserEntity>> getMe();

  Future<Either<Failure, UserEntity>> updateUser(
    String name,
    String? description,
    String email,
    File? image,
  );

  Future<Either<Failure, void>> updatePassword(
    String oldPassword,
    String newPassword,
    String confirmNewPassword,
  );
}
