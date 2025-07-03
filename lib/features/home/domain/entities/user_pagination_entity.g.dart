// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_pagination_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserPaginationEntityImpl _$$UserPaginationEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$UserPaginationEntityImpl(
      users: (json['users'] as List<dynamic>)
          .map((e) => UserEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      currentPage: (json['current_page'] as num).toInt(),
      lastPage: (json['last_page'] as num).toInt(),
    );

Map<String, dynamic> _$$UserPaginationEntityImplToJson(
        _$UserPaginationEntityImpl instance) =>
    <String, dynamic>{
      'users': instance.users.map((e) => e.toJson()).toList(),
      'current_page': instance.currentPage,
      'last_page': instance.lastPage,
    };
