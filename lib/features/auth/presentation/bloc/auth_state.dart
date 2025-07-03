part of 'auth_bloc.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState({
    required AsyncValue<bool> loginStatus,
    required AsyncValue<bool> logoutStatus,
    required AsyncValue<bool> registerStatus,
    required AsyncValue<bool> forgotPasswordStatus,
    required AsyncValue<bool> resetPasswordStatus,
  }) = _AuthState;
}
