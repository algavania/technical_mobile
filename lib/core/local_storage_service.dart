import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class LocalStorageService {
  static FlutterSecureStorage get _instance =>
      storage ??= const FlutterSecureStorage();
  static FlutterSecureStorage? storage;

  static FlutterSecureStorage init() {
    storage = _instance;
    return storage ?? const FlutterSecureStorage();
  }

  static Future<String?> getToken() async {
    return await storage?.read(key: 'token');
  }

  static Future<void> setToken(String token) async {
    await storage?.write(key: 'token', value: token);
  }

  static Future<String> getRefreshToken() async {
    return await storage?.read(key: 'refresh_token') ?? '';
  }

  static Future<void> setRefreshToken(String token) async {
    await storage?.write(key: 'refresh_token', value: token);
  }

  static Future<void> clearAll() async {
    await storage?.deleteAll();
  }
}
