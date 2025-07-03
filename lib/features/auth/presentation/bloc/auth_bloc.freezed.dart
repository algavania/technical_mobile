// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email, String password) login,
    required TResult Function(String name, String email, String password,
            String passwordConfirmation)
        register,
    required TResult Function() logout,
    required TResult Function(String email) forgotPassword,
    required TResult Function(String email, String password,
            String passwordConfirmation, String token)
        resetPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String email, String password)? login,
    TResult? Function(String name, String email, String password,
            String passwordConfirmation)?
        register,
    TResult? Function()? logout,
    TResult? Function(String email)? forgotPassword,
    TResult? Function(String email, String password,
            String passwordConfirmation, String token)?
        resetPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password)? login,
    TResult Function(String name, String email, String password,
            String passwordConfirmation)?
        register,
    TResult Function()? logout,
    TResult Function(String email)? forgotPassword,
    TResult Function(String email, String password, String passwordConfirmation,
            String token)?
        resetPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Login value) login,
    required TResult Function(_Register value) register,
    required TResult Function(_Logout value) logout,
    required TResult Function(_ForgotPassword value) forgotPassword,
    required TResult Function(_ResetPassword value) resetPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Login value)? login,
    TResult? Function(_Register value)? register,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_ForgotPassword value)? forgotPassword,
    TResult? Function(_ResetPassword value)? resetPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Login value)? login,
    TResult Function(_Register value)? register,
    TResult Function(_Logout value)? logout,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_ResetPassword value)? resetPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'AuthEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email, String password) login,
    required TResult Function(String name, String email, String password,
            String passwordConfirmation)
        register,
    required TResult Function() logout,
    required TResult Function(String email) forgotPassword,
    required TResult Function(String email, String password,
            String passwordConfirmation, String token)
        resetPassword,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String email, String password)? login,
    TResult? Function(String name, String email, String password,
            String passwordConfirmation)?
        register,
    TResult? Function()? logout,
    TResult? Function(String email)? forgotPassword,
    TResult? Function(String email, String password,
            String passwordConfirmation, String token)?
        resetPassword,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password)? login,
    TResult Function(String name, String email, String password,
            String passwordConfirmation)?
        register,
    TResult Function()? logout,
    TResult Function(String email)? forgotPassword,
    TResult Function(String email, String password, String passwordConfirmation,
            String token)?
        resetPassword,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Login value) login,
    required TResult Function(_Register value) register,
    required TResult Function(_Logout value) logout,
    required TResult Function(_ForgotPassword value) forgotPassword,
    required TResult Function(_ResetPassword value) resetPassword,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Login value)? login,
    TResult? Function(_Register value)? register,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_ForgotPassword value)? forgotPassword,
    TResult? Function(_ResetPassword value)? resetPassword,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Login value)? login,
    TResult Function(_Register value)? register,
    TResult Function(_Logout value)? logout,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_ResetPassword value)? resetPassword,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AuthEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$LoginImplCopyWith<$Res> {
  factory _$$LoginImplCopyWith(
          _$LoginImpl value, $Res Function(_$LoginImpl) then) =
      __$$LoginImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$LoginImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LoginImpl>
    implements _$$LoginImplCopyWith<$Res> {
  __$$LoginImplCopyWithImpl(
      _$LoginImpl _value, $Res Function(_$LoginImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$LoginImpl(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginImpl implements _Login {
  const _$LoginImpl(this.email, this.password);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.login(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginImplCopyWith<_$LoginImpl> get copyWith =>
      __$$LoginImplCopyWithImpl<_$LoginImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email, String password) login,
    required TResult Function(String name, String email, String password,
            String passwordConfirmation)
        register,
    required TResult Function() logout,
    required TResult Function(String email) forgotPassword,
    required TResult Function(String email, String password,
            String passwordConfirmation, String token)
        resetPassword,
  }) {
    return login(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String email, String password)? login,
    TResult? Function(String name, String email, String password,
            String passwordConfirmation)?
        register,
    TResult? Function()? logout,
    TResult? Function(String email)? forgotPassword,
    TResult? Function(String email, String password,
            String passwordConfirmation, String token)?
        resetPassword,
  }) {
    return login?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password)? login,
    TResult Function(String name, String email, String password,
            String passwordConfirmation)?
        register,
    TResult Function()? logout,
    TResult Function(String email)? forgotPassword,
    TResult Function(String email, String password, String passwordConfirmation,
            String token)?
        resetPassword,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Login value) login,
    required TResult Function(_Register value) register,
    required TResult Function(_Logout value) logout,
    required TResult Function(_ForgotPassword value) forgotPassword,
    required TResult Function(_ResetPassword value) resetPassword,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Login value)? login,
    TResult? Function(_Register value)? register,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_ForgotPassword value)? forgotPassword,
    TResult? Function(_ResetPassword value)? resetPassword,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Login value)? login,
    TResult Function(_Register value)? register,
    TResult Function(_Logout value)? logout,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_ResetPassword value)? resetPassword,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class _Login implements AuthEvent {
  const factory _Login(final String email, final String password) = _$LoginImpl;

  String get email;
  String get password;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginImplCopyWith<_$LoginImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegisterImplCopyWith<$Res> {
  factory _$$RegisterImplCopyWith(
          _$RegisterImpl value, $Res Function(_$RegisterImpl) then) =
      __$$RegisterImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String name,
      String email,
      String password,
      String passwordConfirmation});
}

/// @nodoc
class __$$RegisterImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$RegisterImpl>
    implements _$$RegisterImplCopyWith<$Res> {
  __$$RegisterImplCopyWithImpl(
      _$RegisterImpl _value, $Res Function(_$RegisterImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? password = null,
    Object? passwordConfirmation = null,
  }) {
    return _then(_$RegisterImpl(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      null == passwordConfirmation
          ? _value.passwordConfirmation
          : passwordConfirmation // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RegisterImpl implements _Register {
  const _$RegisterImpl(
      this.name, this.email, this.password, this.passwordConfirmation);

  @override
  final String name;
  @override
  final String email;
  @override
  final String password;
  @override
  final String passwordConfirmation;

  @override
  String toString() {
    return 'AuthEvent.register(name: $name, email: $email, password: $password, passwordConfirmation: $passwordConfirmation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterImpl &&
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

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterImplCopyWith<_$RegisterImpl> get copyWith =>
      __$$RegisterImplCopyWithImpl<_$RegisterImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email, String password) login,
    required TResult Function(String name, String email, String password,
            String passwordConfirmation)
        register,
    required TResult Function() logout,
    required TResult Function(String email) forgotPassword,
    required TResult Function(String email, String password,
            String passwordConfirmation, String token)
        resetPassword,
  }) {
    return register(name, email, password, passwordConfirmation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String email, String password)? login,
    TResult? Function(String name, String email, String password,
            String passwordConfirmation)?
        register,
    TResult? Function()? logout,
    TResult? Function(String email)? forgotPassword,
    TResult? Function(String email, String password,
            String passwordConfirmation, String token)?
        resetPassword,
  }) {
    return register?.call(name, email, password, passwordConfirmation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password)? login,
    TResult Function(String name, String email, String password,
            String passwordConfirmation)?
        register,
    TResult Function()? logout,
    TResult Function(String email)? forgotPassword,
    TResult Function(String email, String password, String passwordConfirmation,
            String token)?
        resetPassword,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(name, email, password, passwordConfirmation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Login value) login,
    required TResult Function(_Register value) register,
    required TResult Function(_Logout value) logout,
    required TResult Function(_ForgotPassword value) forgotPassword,
    required TResult Function(_ResetPassword value) resetPassword,
  }) {
    return register(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Login value)? login,
    TResult? Function(_Register value)? register,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_ForgotPassword value)? forgotPassword,
    TResult? Function(_ResetPassword value)? resetPassword,
  }) {
    return register?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Login value)? login,
    TResult Function(_Register value)? register,
    TResult Function(_Logout value)? logout,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_ResetPassword value)? resetPassword,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(this);
    }
    return orElse();
  }
}

abstract class _Register implements AuthEvent {
  const factory _Register(
      final String name,
      final String email,
      final String password,
      final String passwordConfirmation) = _$RegisterImpl;

  String get name;
  String get email;
  String get password;
  String get passwordConfirmation;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegisterImplCopyWith<_$RegisterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LogoutImplCopyWith<$Res> {
  factory _$$LogoutImplCopyWith(
          _$LogoutImpl value, $Res Function(_$LogoutImpl) then) =
      __$$LogoutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogoutImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LogoutImpl>
    implements _$$LogoutImplCopyWith<$Res> {
  __$$LogoutImplCopyWithImpl(
      _$LogoutImpl _value, $Res Function(_$LogoutImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LogoutImpl implements _Logout {
  const _$LogoutImpl();

  @override
  String toString() {
    return 'AuthEvent.logout()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogoutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email, String password) login,
    required TResult Function(String name, String email, String password,
            String passwordConfirmation)
        register,
    required TResult Function() logout,
    required TResult Function(String email) forgotPassword,
    required TResult Function(String email, String password,
            String passwordConfirmation, String token)
        resetPassword,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String email, String password)? login,
    TResult? Function(String name, String email, String password,
            String passwordConfirmation)?
        register,
    TResult? Function()? logout,
    TResult? Function(String email)? forgotPassword,
    TResult? Function(String email, String password,
            String passwordConfirmation, String token)?
        resetPassword,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password)? login,
    TResult Function(String name, String email, String password,
            String passwordConfirmation)?
        register,
    TResult Function()? logout,
    TResult Function(String email)? forgotPassword,
    TResult Function(String email, String password, String passwordConfirmation,
            String token)?
        resetPassword,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Login value) login,
    required TResult Function(_Register value) register,
    required TResult Function(_Logout value) logout,
    required TResult Function(_ForgotPassword value) forgotPassword,
    required TResult Function(_ResetPassword value) resetPassword,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Login value)? login,
    TResult? Function(_Register value)? register,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_ForgotPassword value)? forgotPassword,
    TResult? Function(_ResetPassword value)? resetPassword,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Login value)? login,
    TResult Function(_Register value)? register,
    TResult Function(_Logout value)? logout,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_ResetPassword value)? resetPassword,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class _Logout implements AuthEvent {
  const factory _Logout() = _$LogoutImpl;
}

/// @nodoc
abstract class _$$ForgotPasswordImplCopyWith<$Res> {
  factory _$$ForgotPasswordImplCopyWith(_$ForgotPasswordImpl value,
          $Res Function(_$ForgotPasswordImpl) then) =
      __$$ForgotPasswordImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$ForgotPasswordImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$ForgotPasswordImpl>
    implements _$$ForgotPasswordImplCopyWith<$Res> {
  __$$ForgotPasswordImplCopyWithImpl(
      _$ForgotPasswordImpl _value, $Res Function(_$ForgotPasswordImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$ForgotPasswordImpl(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ForgotPasswordImpl implements _ForgotPassword {
  const _$ForgotPasswordImpl(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'AuthEvent.forgotPassword(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgotPasswordImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ForgotPasswordImplCopyWith<_$ForgotPasswordImpl> get copyWith =>
      __$$ForgotPasswordImplCopyWithImpl<_$ForgotPasswordImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email, String password) login,
    required TResult Function(String name, String email, String password,
            String passwordConfirmation)
        register,
    required TResult Function() logout,
    required TResult Function(String email) forgotPassword,
    required TResult Function(String email, String password,
            String passwordConfirmation, String token)
        resetPassword,
  }) {
    return forgotPassword(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String email, String password)? login,
    TResult? Function(String name, String email, String password,
            String passwordConfirmation)?
        register,
    TResult? Function()? logout,
    TResult? Function(String email)? forgotPassword,
    TResult? Function(String email, String password,
            String passwordConfirmation, String token)?
        resetPassword,
  }) {
    return forgotPassword?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password)? login,
    TResult Function(String name, String email, String password,
            String passwordConfirmation)?
        register,
    TResult Function()? logout,
    TResult Function(String email)? forgotPassword,
    TResult Function(String email, String password, String passwordConfirmation,
            String token)?
        resetPassword,
    required TResult orElse(),
  }) {
    if (forgotPassword != null) {
      return forgotPassword(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Login value) login,
    required TResult Function(_Register value) register,
    required TResult Function(_Logout value) logout,
    required TResult Function(_ForgotPassword value) forgotPassword,
    required TResult Function(_ResetPassword value) resetPassword,
  }) {
    return forgotPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Login value)? login,
    TResult? Function(_Register value)? register,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_ForgotPassword value)? forgotPassword,
    TResult? Function(_ResetPassword value)? resetPassword,
  }) {
    return forgotPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Login value)? login,
    TResult Function(_Register value)? register,
    TResult Function(_Logout value)? logout,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_ResetPassword value)? resetPassword,
    required TResult orElse(),
  }) {
    if (forgotPassword != null) {
      return forgotPassword(this);
    }
    return orElse();
  }
}

abstract class _ForgotPassword implements AuthEvent {
  const factory _ForgotPassword(final String email) = _$ForgotPasswordImpl;

  String get email;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ForgotPasswordImplCopyWith<_$ForgotPasswordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResetPasswordImplCopyWith<$Res> {
  factory _$$ResetPasswordImplCopyWith(
          _$ResetPasswordImpl value, $Res Function(_$ResetPasswordImpl) then) =
      __$$ResetPasswordImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String email,
      String password,
      String passwordConfirmation,
      String token});
}

/// @nodoc
class __$$ResetPasswordImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$ResetPasswordImpl>
    implements _$$ResetPasswordImplCopyWith<$Res> {
  __$$ResetPasswordImplCopyWithImpl(
      _$ResetPasswordImpl _value, $Res Function(_$ResetPasswordImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? passwordConfirmation = null,
    Object? token = null,
  }) {
    return _then(_$ResetPasswordImpl(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      null == passwordConfirmation
          ? _value.passwordConfirmation
          : passwordConfirmation // ignore: cast_nullable_to_non_nullable
              as String,
      null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ResetPasswordImpl implements _ResetPassword {
  const _$ResetPasswordImpl(
      this.email, this.password, this.passwordConfirmation, this.token);

  @override
  final String email;
  @override
  final String password;
  @override
  final String passwordConfirmation;
  @override
  final String token;

  @override
  String toString() {
    return 'AuthEvent.resetPassword(email: $email, password: $password, passwordConfirmation: $passwordConfirmation, token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResetPasswordImpl &&
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

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResetPasswordImplCopyWith<_$ResetPasswordImpl> get copyWith =>
      __$$ResetPasswordImplCopyWithImpl<_$ResetPasswordImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email, String password) login,
    required TResult Function(String name, String email, String password,
            String passwordConfirmation)
        register,
    required TResult Function() logout,
    required TResult Function(String email) forgotPassword,
    required TResult Function(String email, String password,
            String passwordConfirmation, String token)
        resetPassword,
  }) {
    return resetPassword(email, password, passwordConfirmation, token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String email, String password)? login,
    TResult? Function(String name, String email, String password,
            String passwordConfirmation)?
        register,
    TResult? Function()? logout,
    TResult? Function(String email)? forgotPassword,
    TResult? Function(String email, String password,
            String passwordConfirmation, String token)?
        resetPassword,
  }) {
    return resetPassword?.call(email, password, passwordConfirmation, token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password)? login,
    TResult Function(String name, String email, String password,
            String passwordConfirmation)?
        register,
    TResult Function()? logout,
    TResult Function(String email)? forgotPassword,
    TResult Function(String email, String password, String passwordConfirmation,
            String token)?
        resetPassword,
    required TResult orElse(),
  }) {
    if (resetPassword != null) {
      return resetPassword(email, password, passwordConfirmation, token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Login value) login,
    required TResult Function(_Register value) register,
    required TResult Function(_Logout value) logout,
    required TResult Function(_ForgotPassword value) forgotPassword,
    required TResult Function(_ResetPassword value) resetPassword,
  }) {
    return resetPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Login value)? login,
    TResult? Function(_Register value)? register,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_ForgotPassword value)? forgotPassword,
    TResult? Function(_ResetPassword value)? resetPassword,
  }) {
    return resetPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Login value)? login,
    TResult Function(_Register value)? register,
    TResult Function(_Logout value)? logout,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_ResetPassword value)? resetPassword,
    required TResult orElse(),
  }) {
    if (resetPassword != null) {
      return resetPassword(this);
    }
    return orElse();
  }
}

abstract class _ResetPassword implements AuthEvent {
  const factory _ResetPassword(
      final String email,
      final String password,
      final String passwordConfirmation,
      final String token) = _$ResetPasswordImpl;

  String get email;
  String get password;
  String get passwordConfirmation;
  String get token;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResetPasswordImplCopyWith<_$ResetPasswordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthState {
  AsyncValue<bool> get loginStatus => throw _privateConstructorUsedError;
  AsyncValue<bool> get logoutStatus => throw _privateConstructorUsedError;
  AsyncValue<bool> get registerStatus => throw _privateConstructorUsedError;
  AsyncValue<bool> get forgotPasswordStatus =>
      throw _privateConstructorUsedError;
  AsyncValue<bool> get resetPasswordStatus =>
      throw _privateConstructorUsedError;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
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
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      loginStatus: null == loginStatus
          ? _value.loginStatus
          : loginStatus // ignore: cast_nullable_to_non_nullable
              as AsyncValue<bool>,
      logoutStatus: null == logoutStatus
          ? _value.logoutStatus
          : logoutStatus // ignore: cast_nullable_to_non_nullable
              as AsyncValue<bool>,
      registerStatus: null == registerStatus
          ? _value.registerStatus
          : registerStatus // ignore: cast_nullable_to_non_nullable
              as AsyncValue<bool>,
      forgotPasswordStatus: null == forgotPasswordStatus
          ? _value.forgotPasswordStatus
          : forgotPasswordStatus // ignore: cast_nullable_to_non_nullable
              as AsyncValue<bool>,
      resetPasswordStatus: null == resetPasswordStatus
          ? _value.resetPasswordStatus
          : resetPasswordStatus // ignore: cast_nullable_to_non_nullable
              as AsyncValue<bool>,
    ) as $Val);
  }

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AsyncValueCopyWith<bool, $Res> get loginStatus {
    return $AsyncValueCopyWith<bool, $Res>(_value.loginStatus, (value) {
      return _then(_value.copyWith(loginStatus: value) as $Val);
    });
  }

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AsyncValueCopyWith<bool, $Res> get logoutStatus {
    return $AsyncValueCopyWith<bool, $Res>(_value.logoutStatus, (value) {
      return _then(_value.copyWith(logoutStatus: value) as $Val);
    });
  }

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AsyncValueCopyWith<bool, $Res> get registerStatus {
    return $AsyncValueCopyWith<bool, $Res>(_value.registerStatus, (value) {
      return _then(_value.copyWith(registerStatus: value) as $Val);
    });
  }

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AsyncValueCopyWith<bool, $Res> get forgotPasswordStatus {
    return $AsyncValueCopyWith<bool, $Res>(_value.forgotPasswordStatus,
        (value) {
      return _then(_value.copyWith(forgotPasswordStatus: value) as $Val);
    });
  }

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AsyncValueCopyWith<bool, $Res> get resetPasswordStatus {
    return $AsyncValueCopyWith<bool, $Res>(_value.resetPasswordStatus, (value) {
      return _then(_value.copyWith(resetPasswordStatus: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AuthStateImplCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$AuthStateImplCopyWith(
          _$AuthStateImpl value, $Res Function(_$AuthStateImpl) then) =
      __$$AuthStateImplCopyWithImpl<$Res>;
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
class __$$AuthStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateImpl>
    implements _$$AuthStateImplCopyWith<$Res> {
  __$$AuthStateImplCopyWithImpl(
      _$AuthStateImpl _value, $Res Function(_$AuthStateImpl) _then)
      : super(_value, _then);

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
    return _then(_$AuthStateImpl(
      loginStatus: null == loginStatus
          ? _value.loginStatus
          : loginStatus // ignore: cast_nullable_to_non_nullable
              as AsyncValue<bool>,
      logoutStatus: null == logoutStatus
          ? _value.logoutStatus
          : logoutStatus // ignore: cast_nullable_to_non_nullable
              as AsyncValue<bool>,
      registerStatus: null == registerStatus
          ? _value.registerStatus
          : registerStatus // ignore: cast_nullable_to_non_nullable
              as AsyncValue<bool>,
      forgotPasswordStatus: null == forgotPasswordStatus
          ? _value.forgotPasswordStatus
          : forgotPasswordStatus // ignore: cast_nullable_to_non_nullable
              as AsyncValue<bool>,
      resetPasswordStatus: null == resetPasswordStatus
          ? _value.resetPasswordStatus
          : resetPasswordStatus // ignore: cast_nullable_to_non_nullable
              as AsyncValue<bool>,
    ));
  }
}

/// @nodoc

class _$AuthStateImpl implements _AuthState {
  const _$AuthStateImpl(
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

  @override
  String toString() {
    return 'AuthState(loginStatus: $loginStatus, logoutStatus: $logoutStatus, registerStatus: $registerStatus, forgotPasswordStatus: $forgotPasswordStatus, resetPasswordStatus: $resetPasswordStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateImpl &&
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

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      __$$AuthStateImplCopyWithImpl<_$AuthStateImpl>(this, _$identity);
}

abstract class _AuthState implements AuthState {
  const factory _AuthState(
      {required final AsyncValue<bool> loginStatus,
      required final AsyncValue<bool> logoutStatus,
      required final AsyncValue<bool> registerStatus,
      required final AsyncValue<bool> forgotPasswordStatus,
      required final AsyncValue<bool> resetPasswordStatus}) = _$AuthStateImpl;

  @override
  AsyncValue<bool> get loginStatus;
  @override
  AsyncValue<bool> get logoutStatus;
  @override
  AsyncValue<bool> get registerStatus;
  @override
  AsyncValue<bool> get forgotPasswordStatus;
  @override
  AsyncValue<bool> get resetPasswordStatus;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
