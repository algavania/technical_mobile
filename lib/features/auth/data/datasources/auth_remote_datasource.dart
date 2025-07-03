import 'dart:convert';

import 'package:technical_mobile/core/local_storage_service.dart';
import 'package:technical_mobile/features/auth/data/models/login_response/login_response_model.dart';
import 'package:technical_mobile/features/auth/data/models/user/user_model.dart';
import 'package:technical_mobile/features/auth/domain/entities/user/user_entity.dart';
import 'package:technical_mobile/util/network_util.dart';

abstract class AuthRemoteDataSource {
  Future<UserEntity> login(String email, String password);

  Future<void> register(
    String name,
    String email,
    String password,
    String passwordConfirmation,
  );

  Future<void> logout();

  Future<void> forgotPassword(String email);

  Future<void> resetPassword(
    String email,
    String password,
    String passwordConfirmation,
    String token,
  );

  Future<void> refreshToken();
}

class AuthRemoteDataSourceImpl extends AuthRemoteDataSource {
  @override
  Future<void> forgotPassword(String email) async {
    await NetworkUtil.post(
      Uri.parse('${NetworkUtil.baseUrl}/auth/forgot-password'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({'email': email}),
    );
  }

  @override
  Future<void> refreshToken() async {
    final token = await LocalStorageService.getRefreshToken();
    await NetworkUtil.post(
      Uri.parse('${NetworkUtil.baseUrl}/auth/refresh-token'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({'refresh_token': token}),
    );
  }

  @override
  Future<UserEntity> login(String email, String password) async {
    final res = await NetworkUtil.post(
      Uri.parse('${NetworkUtil.baseUrl}/auth/login'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({
        'email': email,
        'password': password,
      }),
    );
    final data = LoginResponseModel.fromJson(res.data as Map<String, dynamic>);
    await LocalStorageService.setRefreshToken(data.refreshToken);
    await LocalStorageService.setToken(data.token);
    return UserModel.toEntity(data.user);
  }

  @override
  Future<void> logout() async {
    await NetworkUtil.post(
      Uri.parse('${NetworkUtil.baseUrl}/auth/logout'),
    );
    await LocalStorageService.clearAll();
  }

  @override
  Future<void> register(
    String name,
    String email,
    String password,
    String passwordConfirmation,
  ) async {
    await NetworkUtil.post(
      Uri.parse('${NetworkUtil.baseUrl}/auth/register'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({
        'name': name,
        'email': email,
        'password': password,
        'password_confirmation': passwordConfirmation,
      }),
    );
  }

  @override
  Future<void> resetPassword(
    String email,
    String password,
    String passwordConfirmation,
    String token,
  ) async {
    await NetworkUtil.post(
      Uri.parse('${NetworkUtil.baseUrl}/auth/reset-password'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({
        'email': email,
        'password': password,
        'password_confirmation': passwordConfirmation,
        'token': token,
      }),
    );
  }
}
