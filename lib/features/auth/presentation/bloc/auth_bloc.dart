import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:technical_mobile/core/async_value.dart';
import 'package:technical_mobile/features/auth/domain/usecases/usecases.dart';
import 'package:technical_mobile/injector/injector.dart';

part 'auth_event.dart';

part 'auth_state.dart';

part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc()
      : super(
          const AuthState(
            loginStatus: AsyncValue.initial(),
            logoutStatus: AsyncValue.initial(),
            registerStatus: AsyncValue.initial(),
            forgotPasswordStatus: AsyncValue.initial(),
            resetPasswordStatus: AsyncValue.initial(),
          ),
        ) {
    on<_Login>(_onLogin);
    on<_Logout>(_onLogout);
    on<_Register>(_onRegister);
    on<_ForgotPassword>(_onForgotPassword);
    on<_ResetPassword>(_onResetPassword);
  }

  final _login = Injector.instance<Login>();
  final _logout = Injector.instance<Logout>();
  final _register = Injector.instance<Register>();
  final _forgotPassword = Injector.instance<ForgotPassword>();
  final _resetPassword = Injector.instance<ResetPassword>();

  Future<void> _onLogin(_Login event, Emitter<AuthState> emit) async {
    emit(state.copyWith(loginStatus: const AsyncValue.loading()));
    final res = await _login.call(
      LoginParams(
        email: event.email,
        password: event.password,
      ),
    );
    res.fold(
      (failure) =>
          emit(state.copyWith(loginStatus: AsyncValue.error(failure.message))),
      (user) => emit(state.copyWith(loginStatus: const AsyncValue.data(true))),
    );
  }

  Future<void> _onLogout(_Logout event, Emitter<AuthState> emit) async {
    emit(state.copyWith(logoutStatus: const AsyncValue.loading()));
    final res = await _logout.call(const None());
    res.fold(
      (failure) =>
          emit(state.copyWith(logoutStatus: AsyncValue.error(failure.message))),
      (_) => emit(state.copyWith(logoutStatus: const AsyncValue.data(true))),
    );
  }

  Future<void> _onRegister(_Register event, Emitter<AuthState> emit) async {
    emit(state.copyWith(registerStatus: const AsyncValue.loading()));
    final res = await _register.call(
      RegisterParams(
        name: event.name,
        email: event.email,
        password: event.password,
        passwordConfirmation: event.passwordConfirmation,
      ),
    );
    res.fold(
      (failure) => emit(
          state.copyWith(registerStatus: AsyncValue.error(failure.message))),
      (_) => emit(state.copyWith(registerStatus: const AsyncValue.data(true))),
    );
  }

  Future<void> _onForgotPassword(
    _ForgotPassword event,
    Emitter<AuthState> emit,
  ) async {
    emit(state.copyWith(forgotPasswordStatus: const AsyncValue.loading()));
    final res = await _forgotPassword.call(
      ForgotPasswordParams(email: event.email),
    );
    res.fold(
      (failure) => emit(
        state.copyWith(forgotPasswordStatus: AsyncValue.error(failure.message)),
      ),
      (_) => emit(
        state.copyWith(
          forgotPasswordStatus: const AsyncValue.data(true),
        ),
      ),
    );
  }

  Future<void> _onResetPassword(
    _ResetPassword event,
    Emitter<AuthState> emit,
  ) async {
    emit(state.copyWith(resetPasswordStatus: const AsyncValue.loading()));
    final res = await _resetPassword.call(
      ResetPasswordParams(
        email: event.email,
        password: event.password,
        passwordConfirmation: event.passwordConfirmation,
        token: event.token,
      ),
    );
    res.fold(
      (failure) => emit(
        state.copyWith(resetPasswordStatus: AsyncValue.error(failure.message)),
      ),
      (_) => emit(
          state.copyWith(resetPasswordStatus: const AsyncValue.data(true))),
    );
  }
}
