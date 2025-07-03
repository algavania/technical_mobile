import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:technical_mobile/error/exceptions.dart';
import 'package:technical_mobile/features/auth/domain/entities/user/user_entity.dart';
import 'package:technical_mobile/features/home/data/datasources/user_remote_datasource.dart';
import 'package:technical_mobile/features/home/domain/entities/user_pagination_entity.dart';
import 'package:technical_mobile/features/home/domain/repositories/user_repository.dart';
import 'package:technical_mobile/util/helper.dart';

class UserRepositoryImpl extends UserRepository {
  UserRepositoryImpl(this.dataSource);

  final UserRemoteDataSource dataSource;

  @override
  Future<Either<Failure, UserEntity>> getMe() {
    return safeCall(dataSource.getMe);
  }

  @override
  Future<Either<Failure, UserEntity>> getUser(int id) {
    return safeCall(() => dataSource.getUser(id));
  }

  @override
  Future<Either<Failure, UserPaginationEntity>> getUsers(
    int limit,
    int page,
    String? search,
  ) {
    return safeCall(() => dataSource.getUsers(limit, page, search));
  }

  @override
  Future<Either<Failure, UserEntity>> updateUser(
    String name,
    String email,
    File? image,
  ) {
    return safeCall(() => dataSource.updateUser(name, email, image));
  }
}
