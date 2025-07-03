// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getUsers,
    required TResult Function() refresh,
    required TResult Function(String value) searchUsers,
    required TResult Function(int id) getUser,
    required TResult Function(String name, String email, File? image)
        updateUser,
    required TResult Function() getMyProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getUsers,
    TResult? Function()? refresh,
    TResult? Function(String value)? searchUsers,
    TResult? Function(int id)? getUser,
    TResult? Function(String name, String email, File? image)? updateUser,
    TResult? Function()? getMyProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getUsers,
    TResult Function()? refresh,
    TResult Function(String value)? searchUsers,
    TResult Function(int id)? getUser,
    TResult Function(String name, String email, File? image)? updateUser,
    TResult Function()? getMyProfile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetUsers value) getUsers,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_SearchUsers value) searchUsers,
    required TResult Function(_GetUser value) getUser,
    required TResult Function(_UpdateUser value) updateUser,
    required TResult Function(_GetMyProfile value) getMyProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetUsers value)? getUsers,
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_SearchUsers value)? searchUsers,
    TResult? Function(_GetUser value)? getUser,
    TResult? Function(_UpdateUser value)? updateUser,
    TResult? Function(_GetMyProfile value)? getMyProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetUsers value)? getUsers,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_SearchUsers value)? searchUsers,
    TResult Function(_GetUser value)? getUser,
    TResult Function(_UpdateUser value)? updateUser,
    TResult Function(_GetMyProfile value)? getMyProfile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEventCopyWith<$Res> {
  factory $UserEventCopyWith(UserEvent value, $Res Function(UserEvent) then) =
      _$UserEventCopyWithImpl<$Res, UserEvent>;
}

/// @nodoc
class _$UserEventCopyWithImpl<$Res, $Val extends UserEvent>
    implements $UserEventCopyWith<$Res> {
  _$UserEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserEvent
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
    extends _$UserEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'UserEvent.started()';
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
    required TResult Function() getUsers,
    required TResult Function() refresh,
    required TResult Function(String value) searchUsers,
    required TResult Function(int id) getUser,
    required TResult Function(String name, String email, File? image)
        updateUser,
    required TResult Function() getMyProfile,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getUsers,
    TResult? Function()? refresh,
    TResult? Function(String value)? searchUsers,
    TResult? Function(int id)? getUser,
    TResult? Function(String name, String email, File? image)? updateUser,
    TResult? Function()? getMyProfile,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getUsers,
    TResult Function()? refresh,
    TResult Function(String value)? searchUsers,
    TResult Function(int id)? getUser,
    TResult Function(String name, String email, File? image)? updateUser,
    TResult Function()? getMyProfile,
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
    required TResult Function(_GetUsers value) getUsers,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_SearchUsers value) searchUsers,
    required TResult Function(_GetUser value) getUser,
    required TResult Function(_UpdateUser value) updateUser,
    required TResult Function(_GetMyProfile value) getMyProfile,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetUsers value)? getUsers,
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_SearchUsers value)? searchUsers,
    TResult? Function(_GetUser value)? getUser,
    TResult? Function(_UpdateUser value)? updateUser,
    TResult? Function(_GetMyProfile value)? getMyProfile,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetUsers value)? getUsers,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_SearchUsers value)? searchUsers,
    TResult Function(_GetUser value)? getUser,
    TResult Function(_UpdateUser value)? updateUser,
    TResult Function(_GetMyProfile value)? getMyProfile,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements UserEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$GetUsersImplCopyWith<$Res> {
  factory _$$GetUsersImplCopyWith(
          _$GetUsersImpl value, $Res Function(_$GetUsersImpl) then) =
      __$$GetUsersImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetUsersImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$GetUsersImpl>
    implements _$$GetUsersImplCopyWith<$Res> {
  __$$GetUsersImplCopyWithImpl(
      _$GetUsersImpl _value, $Res Function(_$GetUsersImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetUsersImpl implements _GetUsers {
  const _$GetUsersImpl();

  @override
  String toString() {
    return 'UserEvent.getUsers()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetUsersImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getUsers,
    required TResult Function() refresh,
    required TResult Function(String value) searchUsers,
    required TResult Function(int id) getUser,
    required TResult Function(String name, String email, File? image)
        updateUser,
    required TResult Function() getMyProfile,
  }) {
    return getUsers();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getUsers,
    TResult? Function()? refresh,
    TResult? Function(String value)? searchUsers,
    TResult? Function(int id)? getUser,
    TResult? Function(String name, String email, File? image)? updateUser,
    TResult? Function()? getMyProfile,
  }) {
    return getUsers?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getUsers,
    TResult Function()? refresh,
    TResult Function(String value)? searchUsers,
    TResult Function(int id)? getUser,
    TResult Function(String name, String email, File? image)? updateUser,
    TResult Function()? getMyProfile,
    required TResult orElse(),
  }) {
    if (getUsers != null) {
      return getUsers();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetUsers value) getUsers,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_SearchUsers value) searchUsers,
    required TResult Function(_GetUser value) getUser,
    required TResult Function(_UpdateUser value) updateUser,
    required TResult Function(_GetMyProfile value) getMyProfile,
  }) {
    return getUsers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetUsers value)? getUsers,
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_SearchUsers value)? searchUsers,
    TResult? Function(_GetUser value)? getUser,
    TResult? Function(_UpdateUser value)? updateUser,
    TResult? Function(_GetMyProfile value)? getMyProfile,
  }) {
    return getUsers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetUsers value)? getUsers,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_SearchUsers value)? searchUsers,
    TResult Function(_GetUser value)? getUser,
    TResult Function(_UpdateUser value)? updateUser,
    TResult Function(_GetMyProfile value)? getMyProfile,
    required TResult orElse(),
  }) {
    if (getUsers != null) {
      return getUsers(this);
    }
    return orElse();
  }
}

abstract class _GetUsers implements UserEvent {
  const factory _GetUsers() = _$GetUsersImpl;
}

/// @nodoc
abstract class _$$RefreshImplCopyWith<$Res> {
  factory _$$RefreshImplCopyWith(
          _$RefreshImpl value, $Res Function(_$RefreshImpl) then) =
      __$$RefreshImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RefreshImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$RefreshImpl>
    implements _$$RefreshImplCopyWith<$Res> {
  __$$RefreshImplCopyWithImpl(
      _$RefreshImpl _value, $Res Function(_$RefreshImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RefreshImpl implements _Refresh {
  const _$RefreshImpl();

  @override
  String toString() {
    return 'UserEvent.refresh()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RefreshImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getUsers,
    required TResult Function() refresh,
    required TResult Function(String value) searchUsers,
    required TResult Function(int id) getUser,
    required TResult Function(String name, String email, File? image)
        updateUser,
    required TResult Function() getMyProfile,
  }) {
    return refresh();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getUsers,
    TResult? Function()? refresh,
    TResult? Function(String value)? searchUsers,
    TResult? Function(int id)? getUser,
    TResult? Function(String name, String email, File? image)? updateUser,
    TResult? Function()? getMyProfile,
  }) {
    return refresh?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getUsers,
    TResult Function()? refresh,
    TResult Function(String value)? searchUsers,
    TResult Function(int id)? getUser,
    TResult Function(String name, String email, File? image)? updateUser,
    TResult Function()? getMyProfile,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetUsers value) getUsers,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_SearchUsers value) searchUsers,
    required TResult Function(_GetUser value) getUser,
    required TResult Function(_UpdateUser value) updateUser,
    required TResult Function(_GetMyProfile value) getMyProfile,
  }) {
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetUsers value)? getUsers,
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_SearchUsers value)? searchUsers,
    TResult? Function(_GetUser value)? getUser,
    TResult? Function(_UpdateUser value)? updateUser,
    TResult? Function(_GetMyProfile value)? getMyProfile,
  }) {
    return refresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetUsers value)? getUsers,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_SearchUsers value)? searchUsers,
    TResult Function(_GetUser value)? getUser,
    TResult Function(_UpdateUser value)? updateUser,
    TResult Function(_GetMyProfile value)? getMyProfile,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class _Refresh implements UserEvent {
  const factory _Refresh() = _$RefreshImpl;
}

/// @nodoc
abstract class _$$SearchUsersImplCopyWith<$Res> {
  factory _$$SearchUsersImplCopyWith(
          _$SearchUsersImpl value, $Res Function(_$SearchUsersImpl) then) =
      __$$SearchUsersImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$SearchUsersImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$SearchUsersImpl>
    implements _$$SearchUsersImplCopyWith<$Res> {
  __$$SearchUsersImplCopyWithImpl(
      _$SearchUsersImpl _value, $Res Function(_$SearchUsersImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$SearchUsersImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchUsersImpl implements _SearchUsers {
  const _$SearchUsersImpl(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'UserEvent.searchUsers(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchUsersImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchUsersImplCopyWith<_$SearchUsersImpl> get copyWith =>
      __$$SearchUsersImplCopyWithImpl<_$SearchUsersImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getUsers,
    required TResult Function() refresh,
    required TResult Function(String value) searchUsers,
    required TResult Function(int id) getUser,
    required TResult Function(String name, String email, File? image)
        updateUser,
    required TResult Function() getMyProfile,
  }) {
    return searchUsers(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getUsers,
    TResult? Function()? refresh,
    TResult? Function(String value)? searchUsers,
    TResult? Function(int id)? getUser,
    TResult? Function(String name, String email, File? image)? updateUser,
    TResult? Function()? getMyProfile,
  }) {
    return searchUsers?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getUsers,
    TResult Function()? refresh,
    TResult Function(String value)? searchUsers,
    TResult Function(int id)? getUser,
    TResult Function(String name, String email, File? image)? updateUser,
    TResult Function()? getMyProfile,
    required TResult orElse(),
  }) {
    if (searchUsers != null) {
      return searchUsers(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetUsers value) getUsers,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_SearchUsers value) searchUsers,
    required TResult Function(_GetUser value) getUser,
    required TResult Function(_UpdateUser value) updateUser,
    required TResult Function(_GetMyProfile value) getMyProfile,
  }) {
    return searchUsers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetUsers value)? getUsers,
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_SearchUsers value)? searchUsers,
    TResult? Function(_GetUser value)? getUser,
    TResult? Function(_UpdateUser value)? updateUser,
    TResult? Function(_GetMyProfile value)? getMyProfile,
  }) {
    return searchUsers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetUsers value)? getUsers,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_SearchUsers value)? searchUsers,
    TResult Function(_GetUser value)? getUser,
    TResult Function(_UpdateUser value)? updateUser,
    TResult Function(_GetMyProfile value)? getMyProfile,
    required TResult orElse(),
  }) {
    if (searchUsers != null) {
      return searchUsers(this);
    }
    return orElse();
  }
}

abstract class _SearchUsers implements UserEvent {
  const factory _SearchUsers(final String value) = _$SearchUsersImpl;

  String get value;

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchUsersImplCopyWith<_$SearchUsersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetUserImplCopyWith<$Res> {
  factory _$$GetUserImplCopyWith(
          _$GetUserImpl value, $Res Function(_$GetUserImpl) then) =
      __$$GetUserImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$GetUserImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$GetUserImpl>
    implements _$$GetUserImplCopyWith<$Res> {
  __$$GetUserImplCopyWithImpl(
      _$GetUserImpl _value, $Res Function(_$GetUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$GetUserImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetUserImpl implements _GetUser {
  const _$GetUserImpl(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'UserEvent.getUser(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetUserImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetUserImplCopyWith<_$GetUserImpl> get copyWith =>
      __$$GetUserImplCopyWithImpl<_$GetUserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getUsers,
    required TResult Function() refresh,
    required TResult Function(String value) searchUsers,
    required TResult Function(int id) getUser,
    required TResult Function(String name, String email, File? image)
        updateUser,
    required TResult Function() getMyProfile,
  }) {
    return getUser(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getUsers,
    TResult? Function()? refresh,
    TResult? Function(String value)? searchUsers,
    TResult? Function(int id)? getUser,
    TResult? Function(String name, String email, File? image)? updateUser,
    TResult? Function()? getMyProfile,
  }) {
    return getUser?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getUsers,
    TResult Function()? refresh,
    TResult Function(String value)? searchUsers,
    TResult Function(int id)? getUser,
    TResult Function(String name, String email, File? image)? updateUser,
    TResult Function()? getMyProfile,
    required TResult orElse(),
  }) {
    if (getUser != null) {
      return getUser(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetUsers value) getUsers,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_SearchUsers value) searchUsers,
    required TResult Function(_GetUser value) getUser,
    required TResult Function(_UpdateUser value) updateUser,
    required TResult Function(_GetMyProfile value) getMyProfile,
  }) {
    return getUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetUsers value)? getUsers,
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_SearchUsers value)? searchUsers,
    TResult? Function(_GetUser value)? getUser,
    TResult? Function(_UpdateUser value)? updateUser,
    TResult? Function(_GetMyProfile value)? getMyProfile,
  }) {
    return getUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetUsers value)? getUsers,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_SearchUsers value)? searchUsers,
    TResult Function(_GetUser value)? getUser,
    TResult Function(_UpdateUser value)? updateUser,
    TResult Function(_GetMyProfile value)? getMyProfile,
    required TResult orElse(),
  }) {
    if (getUser != null) {
      return getUser(this);
    }
    return orElse();
  }
}

abstract class _GetUser implements UserEvent {
  const factory _GetUser(final int id) = _$GetUserImpl;

  int get id;

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetUserImplCopyWith<_$GetUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateUserImplCopyWith<$Res> {
  factory _$$UpdateUserImplCopyWith(
          _$UpdateUserImpl value, $Res Function(_$UpdateUserImpl) then) =
      __$$UpdateUserImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name, String email, File? image});
}

/// @nodoc
class __$$UpdateUserImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$UpdateUserImpl>
    implements _$$UpdateUserImplCopyWith<$Res> {
  __$$UpdateUserImplCopyWithImpl(
      _$UpdateUserImpl _value, $Res Function(_$UpdateUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? image = freezed,
  }) {
    return _then(_$UpdateUserImpl(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as File?,
    ));
  }
}

/// @nodoc

class _$UpdateUserImpl implements _UpdateUser {
  const _$UpdateUserImpl(this.name, this.email, this.image);

  @override
  final String name;
  @override
  final String email;
  @override
  final File? image;

  @override
  String toString() {
    return 'UserEvent.updateUser(name: $name, email: $email, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateUserImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, email, image);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateUserImplCopyWith<_$UpdateUserImpl> get copyWith =>
      __$$UpdateUserImplCopyWithImpl<_$UpdateUserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getUsers,
    required TResult Function() refresh,
    required TResult Function(String value) searchUsers,
    required TResult Function(int id) getUser,
    required TResult Function(String name, String email, File? image)
        updateUser,
    required TResult Function() getMyProfile,
  }) {
    return updateUser(name, email, image);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getUsers,
    TResult? Function()? refresh,
    TResult? Function(String value)? searchUsers,
    TResult? Function(int id)? getUser,
    TResult? Function(String name, String email, File? image)? updateUser,
    TResult? Function()? getMyProfile,
  }) {
    return updateUser?.call(name, email, image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getUsers,
    TResult Function()? refresh,
    TResult Function(String value)? searchUsers,
    TResult Function(int id)? getUser,
    TResult Function(String name, String email, File? image)? updateUser,
    TResult Function()? getMyProfile,
    required TResult orElse(),
  }) {
    if (updateUser != null) {
      return updateUser(name, email, image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetUsers value) getUsers,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_SearchUsers value) searchUsers,
    required TResult Function(_GetUser value) getUser,
    required TResult Function(_UpdateUser value) updateUser,
    required TResult Function(_GetMyProfile value) getMyProfile,
  }) {
    return updateUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetUsers value)? getUsers,
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_SearchUsers value)? searchUsers,
    TResult? Function(_GetUser value)? getUser,
    TResult? Function(_UpdateUser value)? updateUser,
    TResult? Function(_GetMyProfile value)? getMyProfile,
  }) {
    return updateUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetUsers value)? getUsers,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_SearchUsers value)? searchUsers,
    TResult Function(_GetUser value)? getUser,
    TResult Function(_UpdateUser value)? updateUser,
    TResult Function(_GetMyProfile value)? getMyProfile,
    required TResult orElse(),
  }) {
    if (updateUser != null) {
      return updateUser(this);
    }
    return orElse();
  }
}

abstract class _UpdateUser implements UserEvent {
  const factory _UpdateUser(
          final String name, final String email, final File? image) =
      _$UpdateUserImpl;

  String get name;
  String get email;
  File? get image;

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateUserImplCopyWith<_$UpdateUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetMyProfileImplCopyWith<$Res> {
  factory _$$GetMyProfileImplCopyWith(
          _$GetMyProfileImpl value, $Res Function(_$GetMyProfileImpl) then) =
      __$$GetMyProfileImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetMyProfileImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$GetMyProfileImpl>
    implements _$$GetMyProfileImplCopyWith<$Res> {
  __$$GetMyProfileImplCopyWithImpl(
      _$GetMyProfileImpl _value, $Res Function(_$GetMyProfileImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetMyProfileImpl implements _GetMyProfile {
  const _$GetMyProfileImpl();

  @override
  String toString() {
    return 'UserEvent.getMyProfile()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetMyProfileImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getUsers,
    required TResult Function() refresh,
    required TResult Function(String value) searchUsers,
    required TResult Function(int id) getUser,
    required TResult Function(String name, String email, File? image)
        updateUser,
    required TResult Function() getMyProfile,
  }) {
    return getMyProfile();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getUsers,
    TResult? Function()? refresh,
    TResult? Function(String value)? searchUsers,
    TResult? Function(int id)? getUser,
    TResult? Function(String name, String email, File? image)? updateUser,
    TResult? Function()? getMyProfile,
  }) {
    return getMyProfile?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getUsers,
    TResult Function()? refresh,
    TResult Function(String value)? searchUsers,
    TResult Function(int id)? getUser,
    TResult Function(String name, String email, File? image)? updateUser,
    TResult Function()? getMyProfile,
    required TResult orElse(),
  }) {
    if (getMyProfile != null) {
      return getMyProfile();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetUsers value) getUsers,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_SearchUsers value) searchUsers,
    required TResult Function(_GetUser value) getUser,
    required TResult Function(_UpdateUser value) updateUser,
    required TResult Function(_GetMyProfile value) getMyProfile,
  }) {
    return getMyProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetUsers value)? getUsers,
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_SearchUsers value)? searchUsers,
    TResult? Function(_GetUser value)? getUser,
    TResult? Function(_UpdateUser value)? updateUser,
    TResult? Function(_GetMyProfile value)? getMyProfile,
  }) {
    return getMyProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetUsers value)? getUsers,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_SearchUsers value)? searchUsers,
    TResult Function(_GetUser value)? getUser,
    TResult Function(_UpdateUser value)? updateUser,
    TResult Function(_GetMyProfile value)? getMyProfile,
    required TResult orElse(),
  }) {
    if (getMyProfile != null) {
      return getMyProfile(this);
    }
    return orElse();
  }
}

abstract class _GetMyProfile implements UserEvent {
  const factory _GetMyProfile() = _$GetMyProfileImpl;
}

/// @nodoc
mixin _$UserState {
  AsyncValue<List<UserEntity>> get getUsersStatus =>
      throw _privateConstructorUsedError;
  AsyncValue<bool> get getUsersLoadingStatus =>
      throw _privateConstructorUsedError;
  AsyncValue<UserEntity> get getUserStatus =>
      throw _privateConstructorUsedError;
  AsyncValue<UserEntity> get updateUserStatus =>
      throw _privateConstructorUsedError;
  AsyncValue<UserEntity> get getMyProfileStatus =>
      throw _privateConstructorUsedError;

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserStateCopyWith<UserState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res, UserState>;
  @useResult
  $Res call(
      {AsyncValue<List<UserEntity>> getUsersStatus,
      AsyncValue<bool> getUsersLoadingStatus,
      AsyncValue<UserEntity> getUserStatus,
      AsyncValue<UserEntity> updateUserStatus,
      AsyncValue<UserEntity> getMyProfileStatus});

  $AsyncValueCopyWith<List<UserEntity>, $Res> get getUsersStatus;
  $AsyncValueCopyWith<bool, $Res> get getUsersLoadingStatus;
  $AsyncValueCopyWith<UserEntity, $Res> get getUserStatus;
  $AsyncValueCopyWith<UserEntity, $Res> get updateUserStatus;
  $AsyncValueCopyWith<UserEntity, $Res> get getMyProfileStatus;
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res, $Val extends UserState>
    implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getUsersStatus = null,
    Object? getUsersLoadingStatus = null,
    Object? getUserStatus = null,
    Object? updateUserStatus = null,
    Object? getMyProfileStatus = null,
  }) {
    return _then(_value.copyWith(
      getUsersStatus: null == getUsersStatus
          ? _value.getUsersStatus
          : getUsersStatus // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<UserEntity>>,
      getUsersLoadingStatus: null == getUsersLoadingStatus
          ? _value.getUsersLoadingStatus
          : getUsersLoadingStatus // ignore: cast_nullable_to_non_nullable
              as AsyncValue<bool>,
      getUserStatus: null == getUserStatus
          ? _value.getUserStatus
          : getUserStatus // ignore: cast_nullable_to_non_nullable
              as AsyncValue<UserEntity>,
      updateUserStatus: null == updateUserStatus
          ? _value.updateUserStatus
          : updateUserStatus // ignore: cast_nullable_to_non_nullable
              as AsyncValue<UserEntity>,
      getMyProfileStatus: null == getMyProfileStatus
          ? _value.getMyProfileStatus
          : getMyProfileStatus // ignore: cast_nullable_to_non_nullable
              as AsyncValue<UserEntity>,
    ) as $Val);
  }

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AsyncValueCopyWith<List<UserEntity>, $Res> get getUsersStatus {
    return $AsyncValueCopyWith<List<UserEntity>, $Res>(_value.getUsersStatus,
        (value) {
      return _then(_value.copyWith(getUsersStatus: value) as $Val);
    });
  }

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AsyncValueCopyWith<bool, $Res> get getUsersLoadingStatus {
    return $AsyncValueCopyWith<bool, $Res>(_value.getUsersLoadingStatus,
        (value) {
      return _then(_value.copyWith(getUsersLoadingStatus: value) as $Val);
    });
  }

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AsyncValueCopyWith<UserEntity, $Res> get getUserStatus {
    return $AsyncValueCopyWith<UserEntity, $Res>(_value.getUserStatus, (value) {
      return _then(_value.copyWith(getUserStatus: value) as $Val);
    });
  }

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AsyncValueCopyWith<UserEntity, $Res> get updateUserStatus {
    return $AsyncValueCopyWith<UserEntity, $Res>(_value.updateUserStatus,
        (value) {
      return _then(_value.copyWith(updateUserStatus: value) as $Val);
    });
  }

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AsyncValueCopyWith<UserEntity, $Res> get getMyProfileStatus {
    return $AsyncValueCopyWith<UserEntity, $Res>(_value.getMyProfileStatus,
        (value) {
      return _then(_value.copyWith(getMyProfileStatus: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserStateImplCopyWith<$Res>
    implements $UserStateCopyWith<$Res> {
  factory _$$UserStateImplCopyWith(
          _$UserStateImpl value, $Res Function(_$UserStateImpl) then) =
      __$$UserStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AsyncValue<List<UserEntity>> getUsersStatus,
      AsyncValue<bool> getUsersLoadingStatus,
      AsyncValue<UserEntity> getUserStatus,
      AsyncValue<UserEntity> updateUserStatus,
      AsyncValue<UserEntity> getMyProfileStatus});

  @override
  $AsyncValueCopyWith<List<UserEntity>, $Res> get getUsersStatus;
  @override
  $AsyncValueCopyWith<bool, $Res> get getUsersLoadingStatus;
  @override
  $AsyncValueCopyWith<UserEntity, $Res> get getUserStatus;
  @override
  $AsyncValueCopyWith<UserEntity, $Res> get updateUserStatus;
  @override
  $AsyncValueCopyWith<UserEntity, $Res> get getMyProfileStatus;
}

/// @nodoc
class __$$UserStateImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UserStateImpl>
    implements _$$UserStateImplCopyWith<$Res> {
  __$$UserStateImplCopyWithImpl(
      _$UserStateImpl _value, $Res Function(_$UserStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getUsersStatus = null,
    Object? getUsersLoadingStatus = null,
    Object? getUserStatus = null,
    Object? updateUserStatus = null,
    Object? getMyProfileStatus = null,
  }) {
    return _then(_$UserStateImpl(
      getUsersStatus: null == getUsersStatus
          ? _value.getUsersStatus
          : getUsersStatus // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<UserEntity>>,
      getUsersLoadingStatus: null == getUsersLoadingStatus
          ? _value.getUsersLoadingStatus
          : getUsersLoadingStatus // ignore: cast_nullable_to_non_nullable
              as AsyncValue<bool>,
      getUserStatus: null == getUserStatus
          ? _value.getUserStatus
          : getUserStatus // ignore: cast_nullable_to_non_nullable
              as AsyncValue<UserEntity>,
      updateUserStatus: null == updateUserStatus
          ? _value.updateUserStatus
          : updateUserStatus // ignore: cast_nullable_to_non_nullable
              as AsyncValue<UserEntity>,
      getMyProfileStatus: null == getMyProfileStatus
          ? _value.getMyProfileStatus
          : getMyProfileStatus // ignore: cast_nullable_to_non_nullable
              as AsyncValue<UserEntity>,
    ));
  }
}

/// @nodoc

class _$UserStateImpl implements _UserState {
  const _$UserStateImpl(
      {required this.getUsersStatus,
      required this.getUsersLoadingStatus,
      required this.getUserStatus,
      required this.updateUserStatus,
      required this.getMyProfileStatus});

  @override
  final AsyncValue<List<UserEntity>> getUsersStatus;
  @override
  final AsyncValue<bool> getUsersLoadingStatus;
  @override
  final AsyncValue<UserEntity> getUserStatus;
  @override
  final AsyncValue<UserEntity> updateUserStatus;
  @override
  final AsyncValue<UserEntity> getMyProfileStatus;

  @override
  String toString() {
    return 'UserState(getUsersStatus: $getUsersStatus, getUsersLoadingStatus: $getUsersLoadingStatus, getUserStatus: $getUserStatus, updateUserStatus: $updateUserStatus, getMyProfileStatus: $getMyProfileStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserStateImpl &&
            (identical(other.getUsersStatus, getUsersStatus) ||
                other.getUsersStatus == getUsersStatus) &&
            (identical(other.getUsersLoadingStatus, getUsersLoadingStatus) ||
                other.getUsersLoadingStatus == getUsersLoadingStatus) &&
            (identical(other.getUserStatus, getUserStatus) ||
                other.getUserStatus == getUserStatus) &&
            (identical(other.updateUserStatus, updateUserStatus) ||
                other.updateUserStatus == updateUserStatus) &&
            (identical(other.getMyProfileStatus, getMyProfileStatus) ||
                other.getMyProfileStatus == getMyProfileStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      getUsersStatus,
      getUsersLoadingStatus,
      getUserStatus,
      updateUserStatus,
      getMyProfileStatus);

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserStateImplCopyWith<_$UserStateImpl> get copyWith =>
      __$$UserStateImplCopyWithImpl<_$UserStateImpl>(this, _$identity);
}

abstract class _UserState implements UserState {
  const factory _UserState(
          {required final AsyncValue<List<UserEntity>> getUsersStatus,
          required final AsyncValue<bool> getUsersLoadingStatus,
          required final AsyncValue<UserEntity> getUserStatus,
          required final AsyncValue<UserEntity> updateUserStatus,
          required final AsyncValue<UserEntity> getMyProfileStatus}) =
      _$UserStateImpl;

  @override
  AsyncValue<List<UserEntity>> get getUsersStatus;
  @override
  AsyncValue<bool> get getUsersLoadingStatus;
  @override
  AsyncValue<UserEntity> get getUserStatus;
  @override
  AsyncValue<UserEntity> get updateUserStatus;
  @override
  AsyncValue<UserEntity> get getMyProfileStatus;

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserStateImplCopyWith<_$UserStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
