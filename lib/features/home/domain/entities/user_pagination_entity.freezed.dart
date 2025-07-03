// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_pagination_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserPaginationEntity _$UserPaginationEntityFromJson(Map<String, dynamic> json) {
  return _UserPaginationEntity.fromJson(json);
}

/// @nodoc
mixin _$UserPaginationEntity {
  List<UserEntity> get users => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;
  int get lastPage => throw _privateConstructorUsedError;

  /// Serializes this UserPaginationEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserPaginationEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserPaginationEntityCopyWith<UserPaginationEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserPaginationEntityCopyWith<$Res> {
  factory $UserPaginationEntityCopyWith(UserPaginationEntity value,
          $Res Function(UserPaginationEntity) then) =
      _$UserPaginationEntityCopyWithImpl<$Res, UserPaginationEntity>;
  @useResult
  $Res call({List<UserEntity> users, int currentPage, int lastPage});
}

/// @nodoc
class _$UserPaginationEntityCopyWithImpl<$Res,
        $Val extends UserPaginationEntity>
    implements $UserPaginationEntityCopyWith<$Res> {
  _$UserPaginationEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserPaginationEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = null,
    Object? currentPage = null,
    Object? lastPage = null,
  }) {
    return _then(_value.copyWith(
      users: null == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<UserEntity>,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      lastPage: null == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserPaginationEntityImplCopyWith<$Res>
    implements $UserPaginationEntityCopyWith<$Res> {
  factory _$$UserPaginationEntityImplCopyWith(_$UserPaginationEntityImpl value,
          $Res Function(_$UserPaginationEntityImpl) then) =
      __$$UserPaginationEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<UserEntity> users, int currentPage, int lastPage});
}

/// @nodoc
class __$$UserPaginationEntityImplCopyWithImpl<$Res>
    extends _$UserPaginationEntityCopyWithImpl<$Res, _$UserPaginationEntityImpl>
    implements _$$UserPaginationEntityImplCopyWith<$Res> {
  __$$UserPaginationEntityImplCopyWithImpl(_$UserPaginationEntityImpl _value,
      $Res Function(_$UserPaginationEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserPaginationEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = null,
    Object? currentPage = null,
    Object? lastPage = null,
  }) {
    return _then(_$UserPaginationEntityImpl(
      users: null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<UserEntity>,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      lastPage: null == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserPaginationEntityImpl implements _UserPaginationEntity {
  const _$UserPaginationEntityImpl(
      {required final List<UserEntity> users,
      required this.currentPage,
      required this.lastPage})
      : _users = users;

  factory _$UserPaginationEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserPaginationEntityImplFromJson(json);

  final List<UserEntity> _users;
  @override
  List<UserEntity> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  @override
  final int currentPage;
  @override
  final int lastPage;

  @override
  String toString() {
    return 'UserPaginationEntity(users: $users, currentPage: $currentPage, lastPage: $lastPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserPaginationEntityImpl &&
            const DeepCollectionEquality().equals(other._users, _users) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.lastPage, lastPage) ||
                other.lastPage == lastPage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_users), currentPage, lastPage);

  /// Create a copy of UserPaginationEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserPaginationEntityImplCopyWith<_$UserPaginationEntityImpl>
      get copyWith =>
          __$$UserPaginationEntityImplCopyWithImpl<_$UserPaginationEntityImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserPaginationEntityImplToJson(
      this,
    );
  }
}

abstract class _UserPaginationEntity implements UserPaginationEntity {
  const factory _UserPaginationEntity(
      {required final List<UserEntity> users,
      required final int currentPage,
      required final int lastPage}) = _$UserPaginationEntityImpl;

  factory _UserPaginationEntity.fromJson(Map<String, dynamic> json) =
      _$UserPaginationEntityImpl.fromJson;

  @override
  List<UserEntity> get users;
  @override
  int get currentPage;
  @override
  int get lastPage;

  /// Create a copy of UserPaginationEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserPaginationEntityImplCopyWith<_$UserPaginationEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
