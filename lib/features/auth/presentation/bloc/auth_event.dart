part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.started() = _Started;

  const factory AuthEvent.login(String email, String password) = _Login;

  const factory AuthEvent.register(
    String name,
    String email,
    String password,
    String passwordConfirmation,
  ) = _Register;

  const factory AuthEvent.logout() = _Logout;

  const factory AuthEvent.forgotPassword(String email) = _ForgotPassword;

  const factory AuthEvent.resetPassword(
    String email,
    String password,
    String passwordConfirmation,
    String token,
  ) = _ResetPassword;
}
