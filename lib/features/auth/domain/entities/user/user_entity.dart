import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_entity.freezed.dart';

part 'user_entity.g.dart';

@freezed
abstract class UserEntity with _$UserEntity {
  const factory UserEntity({
    required int id,
    required String name,
    required String email,
    String? description,
    String? imageUrl,
  }) = _UserEntity;

  factory UserEntity.fromJson(Map<String, Object?> json) =>
      _$UserEntityFromJson(json);
}

List<UserEntity> generateMockUsers() {
  return List.generate(
    10,
    (i) => UserEntity(
      id: i,
      name: 'Name',
      email: 'test@gmail.com',
    ),
  );
}
