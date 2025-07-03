import 'dart:io';

import 'package:dio/dio.dart';
import 'package:technical_mobile/data/pagination/pagination_model.dart';
import 'package:technical_mobile/features/auth/data/models/user/user_model.dart';
import 'package:technical_mobile/features/auth/domain/entities/user/user_entity.dart';
import 'package:technical_mobile/features/home/domain/entities/user_pagination_entity.dart';
import 'package:technical_mobile/util/network_util.dart';

abstract class UserRemoteDataSource {
  Future<UserPaginationEntity> getUsers(int limit, int page, String? search);

  Future<UserEntity> getUser(int id);

  Future<UserEntity> getMe();

  Future<UserEntity> updateUser(
    String name,
    String email,
    File? image,
  );
}

class UserRemoteDataSourceImpl extends UserRemoteDataSource {
  @override
  Future<UserEntity> getMe() async {
    final res = await NetworkUtil.get(
      Uri.parse('${NetworkUtil.baseUrl}/user/me'),
    );
    final data = UserModel.fromJson(res.data as Map<String, dynamic>);
    return UserModel.toEntity(data);
  }

  @override
  Future<UserEntity> getUser(int id) async {
    final res = await NetworkUtil.get(
      Uri.parse('${NetworkUtil.baseUrl}/user/$id'),
    );
    final data = UserModel.fromJson(res.data as Map<String, dynamic>);
    return UserModel.toEntity(data);
  }

  @override
  Future<UserPaginationEntity> getUsers(
      int limit, int page, String? search) async {
    final res = await NetworkUtil.get(
      Uri.parse('${NetworkUtil.baseUrl}/user?limit=$limit&page=$page&search='
          '${search ?? ''}'),
    );
    final data = PaginationModel.fromJson(res.data as Map<String, dynamic>);
    final users = (data.data as List)
        .map((user) => UserModel.fromJson(user as Map<String, dynamic>))
        .toList();
    return UserPaginationEntity(
      users: users.map(UserModel.toEntity).toList(),
      currentPage: data.currentPage,
      lastPage: data.lastPage,
    );
  }

  @override
  Future<UserEntity> updateUser(String name, String email, File? image) async {
    final formData = {
      'name': name,
      'email': email,
      'image': image != null
          ? MultipartFile.fromFileSync(image.path,
              filename: image.path.split('/').last)
          : null,
    };
    final res = await NetworkUtil.post(
      Uri.parse('${NetworkUtil.baseUrl}/user'),
      headers: {'Content-Type': 'multipart/form-data'},
      body: formData,
    );
    final data = UserModel.fromJson(res.data as Map<String, dynamic>);
    return UserModel.toEntity(data);
  }
}
