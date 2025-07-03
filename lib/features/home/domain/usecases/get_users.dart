import 'package:dartz/dartz.dart';
import 'package:technical_mobile/error/exceptions.dart';
import 'package:technical_mobile/features/home/domain/entities/user_pagination_entity.dart';
import 'package:technical_mobile/features/home/domain/repositories/user_repository.dart';
import 'package:technical_mobile/util/helper.dart';

class GetUsersParams {
  GetUsersParams({required this.limit, required this.page, this.search});

  final int limit;
  final int page;
  final String? search;
}

class GetUsers
    implements UseCase<Either<Failure, UserPaginationEntity>, GetUsersParams> {
  GetUsers(this._repository);

  final UserRepository _repository;

  @override
  Future<Either<Failure, UserPaginationEntity>> call(GetUsersParams params) {
    return _repository.getUsers(
      params.limit,
      params.page,
      params.search,
    );
  }
}
