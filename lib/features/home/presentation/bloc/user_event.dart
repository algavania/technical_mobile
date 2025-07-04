part of 'user_bloc.dart';

@freezed
class UserEvent with _$UserEvent {
  const factory UserEvent.started() = _Started;

  const factory UserEvent.getUsers() = _GetUsers;

  const factory UserEvent.refresh() = _Refresh;

  const factory UserEvent.searchUsers(String value) = _SearchUsers;

  const factory UserEvent.getUser(int id) = _GetUser;

  const factory UserEvent.updateUser(
    String name,
    String? description,
    String email,
    File? image,
  ) = _UpdateUser;

  const factory UserEvent.updatePassword(
    String oldPassword,
    String newPassword,
    String confirmNewPassword,
  ) = _UpdatePassword;

  const factory UserEvent.getMyProfile() = _GetMyProfile;

  const factory UserEvent.changePickedImage(File? file) = _ChangePickedImage;
}
