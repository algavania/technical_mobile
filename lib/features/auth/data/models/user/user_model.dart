import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:technical_mobile/features/auth/domain/entities/user/user_entity.dart';

part 'user_model.freezed.dart';

part 'user_model.g.dart';

@freezed
abstract class UserModel with _$UserModel {
  const factory UserModel({
    required int id,
    required String name,
    required String email,
    String? description,
    String? imageUrl,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, Object?> json) =>
      _$UserModelFromJson(json);

  static UserEntity toEntity(UserModel model) {
    return UserEntity.fromJson(model.toJson());
  }
}
