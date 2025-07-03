part of 'user_bloc.dart';

@freezed
abstract class UserState with _$UserState {
  const factory UserState({
    required AsyncValue<List<UserEntity>> getUsersStatus,
    required AsyncValue<bool> getUsersLoadingStatus,
    required AsyncValue<UserEntity> getUserStatus,
    required AsyncValue<UserEntity> updateUserStatus,
    required AsyncValue<UserEntity> getMyProfileStatus,
  }) = _UserState;
}
