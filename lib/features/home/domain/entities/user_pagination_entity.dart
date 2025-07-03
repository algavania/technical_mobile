import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:technical_mobile/features/auth/domain/entities/user/user_entity.dart';

part 'user_pagination_entity.freezed.dart';

part 'user_pagination_entity.g.dart';

@freezed
abstract class UserPaginationEntity with _$UserPaginationEntity {
  const factory UserPaginationEntity({
    required List<UserEntity> users,
    required int currentPage,
    required int lastPage,
  }) = _UserPaginationEntity;

  factory UserPaginationEntity.fromJson(Map<String, Object?> json) =>
      _$UserPaginationEntityFromJson(json);
}
