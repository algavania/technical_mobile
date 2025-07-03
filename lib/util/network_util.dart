import 'dart:async';
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:technical_mobile/app/view/app.dart';
import 'package:technical_mobile/core/local_storage_service.dart';
import 'package:technical_mobile/data/response/response_model.dart';
import 'package:technical_mobile/error/exceptions.dart';
import 'package:technical_mobile/features/auth/domain/repositories/auth_repository.dart';
import 'package:technical_mobile/injector/injector.dart';
import 'package:technical_mobile/routes/router.dart';
import 'package:technical_mobile/util/logger.dart';

class NetworkUtil {
  static final Dio _dio = Dio();
  static final _authRepository = Injector.instance<AuthRepository>();
  static const String baseUrl =
      'https://e356-2001-448a-50e1-6704-d903-fa5d-ca01-5618.ngrok-free.app/api';

  static Future<ResponseModel> post(
      Uri url, {
        Map<String, dynamic>? headers,
        Object? body,
        Encoding? encoding,
      }) async {
    return _customNetwork('post', url, body, encoding, headers);
  }

  static Future<ResponseModel> get(
      Uri url, {
        Map<String, dynamic>? headers,
        Object? body,
        Encoding? encoding,
      }) async {
    return _customNetwork('get', url, body, encoding, headers);
  }

  static Future<ResponseModel> put(
      Uri url, {
        Map<String, dynamic>? headers,
        Object? body,
        Encoding? encoding,
      }) async {
    return _customNetwork('put', url, body, encoding, headers);
  }

  static Future<ResponseModel> delete(
      Uri url, {
        Map<String, dynamic>? headers,
        Object? body,
        Encoding? encoding,
      }) async {
    return _customNetwork('delete', url, body, encoding, headers);
  }


  static Future<ResponseModel> _customNetwork(
      String type,
      Uri url,
      Object? body,
      Encoding? encoding,
      Map<String, dynamic>? headers, {
        int retryCount = 0,
      }) async {
    final token = await LocalStorageService.getToken();
    final headerData = headers ?? {};
    if (token != null) {
      headerData['Authorization'] = 'Bearer $token';
    }
    logger.d('Request URL: $url\nRequest Headers: $headerData'
        '\nRequest Body: $body');
    try {
      final res = await _getType(type, url, headerData, body, encoding);
      logger.d('Response Data ${res.statusCode}: ${res.data}');

      final responseModel =
      ResponseModel.fromJson(res.data as Map<String, dynamic>);

      if (!responseModel.success) {
        throw Failure(responseModel.message);
      }

      return responseModel;
    } catch (e) {
      if (e is DioException) {

        // Check if it's a 401 Unauthorized error
        if (e.response?.statusCode == 401 && retryCount == 0 && token != null) {
          // Perform refresh token
          try {
            await _authRepository.refreshToken();
            logger.d('Refresh token successful. Retrying request...');

            // Retry the request with the new token
            final newToken = await LocalStorageService.getToken();
            logger.d('new token $newToken');
            if (newToken != null) {
              headerData['Authorization'] = newToken;
              return await _customNetwork(
                type,
                url,
                body,
                encoding,
                headers,
                retryCount: retryCount + 1,
              );
            }
          } catch (loginError) {
            logger.d('Refresh token failed: $loginError');
            await _authRepository.logout();
            throw Failure('Unauthorized.');
          }
        }

        // If still unauthorized after retrying, log out the user
        if (e.response?.statusCode == 401) {
          await _authRepository.logout();
          unawaited(appRouter.replace(const LoginRoute()));
          throw Failure('Unauthorized.');
        }

        if (e.response?.data != null) {
          final responseModel =
          ResponseModel.fromJson(e.response!.data! as Map<String, dynamic>);
          throw Failure(responseModel.message);
        }
        final errorMessage = _handleDioError(e);
        throw Failure(errorMessage);
      } else {
        logger.e(e.toString());
        throw Failure(e.toString());
      }
    }
  }

  static Future<Response<dynamic>> _getType(
      String type,
      Uri url,
      Map<String, dynamic> headers,
      Object? body,
      Encoding? encoding,
      ) async {
    Response<dynamic> res;
    final options = Options(
      headers: headers,
      followRedirects: false,
      validateStatus: (status) {
        return status! < 400;
      },
    );
    logger.d('options header ${options.headers}');

    switch (type) {
      case 'get':
        res = await _dio.getUri(url, options: options);
      case 'put':
        res = await _dio.putUri(url, data: body, options: options);
      case 'delete':
        res = await _dio.deleteUri(url, data: body, options: options);
      default:
        res = await _dio.postUri(url, data: body, options: options);
    }
    return res;
  }

  static String _handleDioError(DioException e) {
    // You can customize the error handling based on the error
    // type or status code
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
        return 'Connection timeout. Please try again.';
      case DioExceptionType.sendTimeout:
        return 'Send timeout. Please try again.';
      case DioExceptionType.receiveTimeout:
        return 'Receive timeout. Please try again.';
      case DioExceptionType.badResponse:
        return 'Received invalid status code: ${e.response?.statusCode}';
      case DioExceptionType.cancel:
        return 'Request to server was cancelled.';
      case DioExceptionType.badCertificate:
        return 'Bad certificate.';
      case DioExceptionType.connectionError:
        return 'Connection error.';
      case DioExceptionType.unknown:
        return 'Unknown error occurred.';
    }
  }
}
