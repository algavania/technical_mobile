import 'dart:io';

import 'package:dio/dio.dart';
import 'package:technical_mobile/data/pagination/pagination_model.dart';
import 'package:technical_mobile/features/auth/data/models/user/user_model.dart';
import 'package:technical_mobile/features/auth/domain/entities/user/user_entity.dart';
import 'package:technical_mobile/features/home/domain/entities/user_pagination_entity.dart';
import 'package:technical_mobile/util/image_util.dart';
import 'package:technical_mobile/util/logger.dart';
import 'package:technical_mobile/util/network_util.dart';

abstract class UserRemoteDataSource {
  Future<UserPaginationEntity> getUsers(int limit, int page, String? search);

  Future<UserEntity> getUser(int id);

  Future<UserEntity> getMe();

  Future<UserEntity> updateUser(
    String name,
    String? description,
    String email,
    File? image,
  );

  Future<void> updatePassword(
    String oldPassword,
    String newPassword,
    String confirmNewPassword,
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
    int limit,
    int page,
    String? search,
  ) async {
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
  Future<UserEntity> updateUser(
    String name,
    String? description,
    String email,
    File? image,
  ) async {
    var finalImage = image;
    if (finalImage != null) {
      finalImage = await ImageUtil.compressFile(finalImage);
    }
    final formData = FormData.fromMap({
      'name': name,
      'description': description,
      'email': email,
      'image': finalImage != null
          ? await MultipartFile.fromFile(
              finalImage.path,
              filename: finalImage.path.split('/').last,
            )
          : null, // Pass null if no image
    });
    logger.d('Update user form data: ${formData.fields}');

    final res = await NetworkUtil.post(
      Uri.parse('${NetworkUtil.baseUrl}/user'),
      body: formData,
    );
    final data = UserModel.fromJson(res.data as Map<String, dynamic>);
    return UserModel.toEntity(data);
  }

  @override
  Future<void> updatePassword(
    String oldPassword,
    String newPassword,
    String confirmNewPassword,
  ) async {
    await NetworkUtil.post(
      Uri.parse('${NetworkUtil.baseUrl}/auth/update-password'),
      body: {
        'current_password': oldPassword,
        'new_password': newPassword,
        'new_password_confirmation': confirmNewPassword,
      },
    );
  }
}
