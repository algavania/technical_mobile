// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AuthEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AuthEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthEvent()';
  }
}

/// @nodoc
class $AuthEventCopyWith<$Res> {
  $AuthEventCopyWith(AuthEvent _, $Res Function(AuthEvent) __);
}

/// @nodoc

class _Started implements AuthEvent {
  const _Started();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthEvent.started()';
  }
}

/// @nodoc

class _Login implements AuthEvent {
  const _Login(this.email, this.password);

  final String email;
  final String password;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LoginCopyWith<_Login> get copyWith =>
      __$LoginCopyWithImpl<_Login>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Login &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @override
  String toString() {
    return 'AuthEvent.login(email: $email, password: $password)';
  }
}

/// @nodoc
abstract mixin class _$LoginCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory _$LoginCopyWith(_Login value, $Res Function(_Login) _then) =
      __$LoginCopyWithImpl;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$LoginCopyWithImpl<$Res> implements _$LoginCopyWith<$Res> {
  __$LoginCopyWithImpl(this._self, this._then);

  final _Login _self;
  final $Res Function(_Login) _then;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_Login(
      null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _Register implements AuthEvent {
  const _Register(
      this.name, this.email, this.password, this.passwordConfirmation);

  final String name;
  final String email;
  final String password;
  final String passwordConfirmation;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RegisterCopyWith<_Register> get copyWith =>
      __$RegisterCopyWithImpl<_Register>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Register &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.passwordConfirmation, passwordConfirmation) ||
                other.passwordConfirmation == passwordConfirmation));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, name, email, password, passwordConfirmation);

  @override
  String toString() {
    return 'AuthEvent.register(name: $name, email: $email, password: $password, passwordConfirmation: $passwordConfirmation)';
  }
}

/// @nodoc
abstract mixin class _$RegisterCopyWith<$Res>
    implements $AuthEventCopyWith<$Res> {
  factory _$RegisterCopyWith(_Register value, $Res Function(_Register) _then) =
      __$RegisterCopyWithImpl;
  @useResult
  $Res call(
      {String name,
      String email,
      String password,
      String passwordConfirmation});
}

/// @nodoc
class __$RegisterCopyWithImpl<$Res> implements _$RegisterCopyWith<$Res> {
  __$RegisterCopyWithImpl(this._self, this._then);

  final _Register _self;
  final $Res Function(_Register) _then;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? password = null,
    Object? passwordConfirmation = null,
  }) {
    return _then(_Register(
      null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      null == passwordConfirmation
          ? _self.passwordConfirmation
          : passwordConfirmation // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _Logout implements AuthEvent {
  const _Logout();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Logout);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthEvent.logout()';
  }
}

/// @nodoc

class _ForgotPassword implements AuthEvent {
  const _ForgotPassword(this.email);

  final String email;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ForgotPasswordCopyWith<_ForgotPassword> get copyWith =>
      __$ForgotPasswordCopyWithImpl<_ForgotPassword>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ForgotPassword &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @override
  String toString() {
    return 'AuthEvent.forgotPassword(email: $email)';
  }
}

/// @nodoc
abstract mixin class _$ForgotPasswordCopyWith<$Res>
    implements $AuthEventCopyWith<$Res> {
  factory _$ForgotPasswordCopyWith(
          _ForgotPassword value, $Res Function(_ForgotPassword) _then) =
      __$ForgotPasswordCopyWithImpl;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$ForgotPasswordCopyWithImpl<$Res>
    implements _$ForgotPasswordCopyWith<$Res> {
  __$ForgotPasswordCopyWithImpl(this._self, this._then);

  final _ForgotPassword _self;
  final $Res Function(_ForgotPassword) _then;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? email = null,
  }) {
    return _then(_ForgotPassword(
      null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _ResetPassword implements AuthEvent {
  const _ResetPassword(
      this.email, this.password, this.passwordConfirmation, this.token);

  final String email;
  final String password;
  final String passwordConfirmation;
  final String token;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ResetPasswordCopyWith<_ResetPassword> get copyWith =>
      __$ResetPasswordCopyWithImpl<_ResetPassword>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ResetPassword &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.passwordConfirmation, passwordConfirmation) ||
                other.passwordConfirmation == passwordConfirmation) &&
            (identical(other.token, token) || other.token == token));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, email, password, passwordConfirmation, token);

  @override
  String toString() {
    return 'AuthEvent.resetPassword(email: $email, password: $password, passwordConfirmation: $passwordConfirmation, token: $token)';
  }
}

/// @nodoc
abstract mixin class _$ResetPasswordCopyWith<$Res>
    implements $AuthEventCopyWith<$Res> {
  factory _$ResetPasswordCopyWith(
          _ResetPassword value, $Res Function(_ResetPassword) _then) =
      __$ResetPasswordCopyWithImpl;
  @useResult
  $Res call(
      {String email,
      String password,
      String passwordConfirmation,
      String token});
}

/// @nodoc
class __$ResetPasswordCopyWithImpl<$Res>
    implements _$ResetPasswordCopyWith<$Res> {
  __$ResetPasswordCopyWithImpl(this._self, this._then);

  final _ResetPassword _self;
  final $Res Function(_ResetPassword) _then;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? passwordConfirmation = null,
    Object? token = null,
  }) {
    return _then(_ResetPassword(
      null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      null == passwordConfirmation
          ? _self.passwordConfirmation
          : passwordConfirmation // ignore: cast_nullable_to_non_nullable
              as String,
      null == token
          ? _self.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$AuthState {
  AsyncValue<bool> get loginStatus;
  AsyncValue<bool> get logoutStatus;
  AsyncValue<bool> get registerStatus;
  AsyncValue<bool> get forgotPasswordStatus;
  AsyncValue<bool> get resetPasswordStatus;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AuthStateCopyWith<AuthState> get copyWith =>
      _$AuthStateCopyWithImpl<AuthState>(this as AuthState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthState &&
            (identical(other.loginStatus, loginStatus) ||
                other.loginStatus == loginStatus) &&
            (identical(other.logoutStatus, logoutStatus) ||
                other.logoutStatus == logoutStatus) &&
            (identical(other.registerStatus, registerStatus) ||
                other.registerStatus == registerStatus) &&
            (identical(other.forgotPasswordStatus, forgotPasswordStatus) ||
                other.forgotPasswordStatus == forgotPasswordStatus) &&
            (identical(other.resetPasswordStatus, resetPasswordStatus) ||
                other.resetPasswordStatus == resetPasswordStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loginStatus, logoutStatus,
      registerStatus, forgotPasswordStatus, resetPasswordStatus);

  @override
  String toString() {
    return 'AuthState(loginStatus: $loginStatus, logoutStatus: $logoutStatus, registerStatus: $registerStatus, forgotPasswordStatus: $forgotPasswordStatus, resetPasswordStatus: $resetPasswordStatus)';
  }
}

/// @nodoc
abstract mixin class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) _then) =
      _$AuthStateCopyWithImpl;
  @useResult
  $Res call(
      {AsyncValue<bool> loginStatus,
      AsyncValue<bool> logoutStatus,
      AsyncValue<bool> registerStatus,
      AsyncValue<bool> forgotPasswordStatus,
      AsyncValue<bool> resetPasswordStatus});

  $AsyncValueCopyWith<bool, $Res> get loginStatus;
  $AsyncValueCopyWith<bool, $Res> get logoutStatus;
  $AsyncValueCopyWith<bool, $Res> get registerStatus;
  $AsyncValueCopyWith<bool, $Res> get forgotPasswordStatus;
  $AsyncValueCopyWith<bool, $Res> get resetPasswordStatus;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._self, this._then);

  final AuthState _self;
  final $Res Function(AuthState) _then;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loginStatus = null,
    Object? logoutStatus = null,
    Object? registerStatus = null,
    Object? forgotPasswordStatus = null,
    Object? resetPasswordStatus = null,
  }) {
    return _then(_self.copyWith(
      loginStatus: null == loginStatus
          ? _self.loginStatus
          : loginStatus // ignore: cast_nullable_to_non_nullable
              as AsyncValue<bool>,
      logoutStatus: null == logoutStatus
          ? _self.logoutStatus
          : logoutStatus // ignore: cast_nullable_to_non_nullable
              as AsyncValue<bool>,
      registerStatus: null == registerStatus
          ? _self.registerStatus
          : registerStatus // ignore: cast_nullable_to_non_nullable
              as AsyncValue<bool>,
      forgotPasswordStatus: null == forgotPasswordStatus
          ? _self.forgotPasswordStatus
          : forgotPasswordStatus // ignore: cast_nullable_to_non_nullable
              as AsyncValue<bool>,
      resetPasswordStatus: null == resetPasswordStatus
          ? _self.resetPasswordStatus
          : resetPasswordStatus // ignore: cast_nullable_to_non_nullable
              as AsyncValue<bool>,
    ));
  }

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AsyncValueCopyWith<bool, $Res> get loginStatus {
    return $AsyncValueCopyWith<bool, $Res>(_self.loginStatus, (value) {
      return _then(_self.copyWith(loginStatus: value));
    });
  }

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AsyncValueCopyWith<bool, $Res> get logoutStatus {
    return $AsyncValueCopyWith<bool, $Res>(_self.logoutStatus, (value) {
      return _then(_self.copyWith(logoutStatus: value));
    });
  }

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AsyncValueCopyWith<bool, $Res> get registerStatus {
    return $AsyncValueCopyWith<bool, $Res>(_self.registerStatus, (value) {
      return _then(_self.copyWith(registerStatus: value));
    });
  }

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AsyncValueCopyWith<bool, $Res> get forgotPasswordStatus {
    return $AsyncValueCopyWith<bool, $Res>(_self.forgotPasswordStatus, (value) {
      return _then(_self.copyWith(forgotPasswordStatus: value));
    });
  }

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AsyncValueCopyWith<bool, $Res> get resetPasswordStatus {
    return $AsyncValueCopyWith<bool, $Res>(_self.resetPasswordStatus, (value) {
      return _then(_self.copyWith(resetPasswordStatus: value));
    });
  }
}

/// @nodoc

class _AuthState implements AuthState {
  const _AuthState(
      {required this.loginStatus,
      required this.logoutStatus,
      required this.registerStatus,
      required this.forgotPasswordStatus,
      required this.resetPasswordStatus});

  @override
  final AsyncValue<bool> loginStatus;
  @override
  final AsyncValue<bool> logoutStatus;
  @override
  final AsyncValue<bool> registerStatus;
  @override
  final AsyncValue<bool> forgotPasswordStatus;
  @override
  final AsyncValue<bool> resetPasswordStatus;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AuthStateCopyWith<_AuthState> get copyWith =>
      __$AuthStateCopyWithImpl<_AuthState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AuthState &&
            (identical(other.loginStatus, loginStatus) ||
                other.loginStatus == loginStatus) &&
            (identical(other.logoutStatus, logoutStatus) ||
                other.logoutStatus == logoutStatus) &&
            (identical(other.registerStatus, registerStatus) ||
                other.registerStatus == registerStatus) &&
            (identical(other.forgotPasswordStatus, forgotPasswordStatus) ||
                other.forgotPasswordStatus == forgotPasswordStatus) &&
            (identical(other.resetPasswordStatus, resetPasswordStatus) ||
                other.resetPasswordStatus == resetPasswordStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loginStatus, logoutStatus,
      registerStatus, forgotPasswordStatus, resetPasswordStatus);

  @override
  String toString() {
    return 'AuthState(loginStatus: $loginStatus, logoutStatus: $logoutStatus, registerStatus: $registerStatus, forgotPasswordStatus: $forgotPasswordStatus, resetPasswordStatus: $resetPasswordStatus)';
  }
}

/// @nodoc
abstract mixin class _$AuthStateCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$AuthStateCopyWith(
          _AuthState value, $Res Function(_AuthState) _then) =
      __$AuthStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {AsyncValue<bool> loginStatus,
      AsyncValue<bool> logoutStatus,
      AsyncValue<bool> registerStatus,
      AsyncValue<bool> forgotPasswordStatus,
      AsyncValue<bool> resetPasswordStatus});

  @override
  $AsyncValueCopyWith<bool, $Res> get loginStatus;
  @override
  $AsyncValueCopyWith<bool, $Res> get logoutStatus;
  @override
  $AsyncValueCopyWith<bool, $Res> get registerStatus;
  @override
  $AsyncValueCopyWith<bool, $Res> get forgotPasswordStatus;
  @override
  $AsyncValueCopyWith<bool, $Res> get resetPasswordStatus;
}

/// @nodoc
class __$AuthStateCopyWithImpl<$Res> implements _$AuthStateCopyWith<$Res> {
  __$AuthStateCopyWithImpl(this._self, this._then);

  final _AuthState _self;
  final $Res Function(_AuthState) _then;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? loginStatus = null,
    Object? logoutStatus = null,
    Object? registerStatus = null,
    Object? forgotPasswordStatus = null,
    Object? resetPasswordStatus = null,
  }) {
    return _then(_AuthState(
      loginStatus: null == loginStatus
          ? _self.loginStatus
          : loginStatus // ignore: cast_nullable_to_non_nullable
              as AsyncValue<bool>,
      logoutStatus: null == logoutStatus
          ? _self.logoutStatus
          : logoutStatus // ignore: cast_nullable_to_non_nullable
              as AsyncValue<bool>,
      registerStatus: null == registerStatus
          ? _self.registerStatus
          : registerStatus // ignore: cast_nullable_to_non_nullable
              as AsyncValue<bool>,
      forgotPasswordStatus: null == forgotPasswordStatus
          ? _self.forgotPasswordStatus
          : forgotPasswordStatus // ignore: cast_nullable_to_non_nullable
              as AsyncValue<bool>,
      resetPasswordStatus: null == resetPasswordStatus
          ? _self.resetPasswordStatus
          : resetPasswordStatus // ignore: cast_nullable_to_non_nullable
              as AsyncValue<bool>,
    ));
  }

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AsyncValueCopyWith<bool, $Res> get loginStatus {
    return $AsyncValueCopyWith<bool, $Res>(_self.loginStatus, (value) {
      return _then(_self.copyWith(loginStatus: value));
    });
  }

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AsyncValueCopyWith<bool, $Res> get logoutStatus {
    return $AsyncValueCopyWith<bool, $Res>(_self.logoutStatus, (value) {
      return _then(_self.copyWith(logoutStatus: value));
    });
  }

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AsyncValueCopyWith<bool, $Res> get registerStatus {
    return $AsyncValueCopyWith<bool, $Res>(_self.registerStatus, (value) {
      return _then(_self.copyWith(registerStatus: value));
    });
  }

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AsyncValueCopyWith<bool, $Res> get forgotPasswordStatus {
    return $AsyncValueCopyWith<bool, $Res>(_self.forgotPasswordStatus, (value) {
      return _then(_self.copyWith(forgotPasswordStatus: value));
    });
  }

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AsyncValueCopyWith<bool, $Res> get resetPasswordStatus {
    return $AsyncValueCopyWith<bool, $Res>(_self.resetPasswordStatus, (value) {
      return _then(_self.copyWith(resetPasswordStatus: value));
    });
  }
}

// dart format on
