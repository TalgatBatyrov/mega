import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:mega/core/services/http_service/exceptions/server_exception.dart';

class ApiClient {
  static const String baseUrl = 'https://api.kinopoisk.dev/v1.4/';

  late Dio _dio;

  ApiClient() {
    _dio = Dio(baseOptions);

    _setupInterceptors();
  }

  void _setupInterceptors() {
    _dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) async {
        const token = 'ERYF86V-AE64AD7-JY5JW5P-BDRNFAT';

        // Здесь вы можете добавить любые необходимые заголовки, например, для авторизации
        if (token.isNotEmpty) {
          options.headers['X-API-KEY'] = token;
        }

        // Передаем управление следующему интерсептору или выполнению запроса
        return handler.next(options);
      },
      onResponse: (response, handler) {
        debugPrint('Response: ${response.data}');
        // Передаем управление следующему интерсептору или обработчику ответа
        return handler.next(response);
      },
      onError: (DioException err, ErrorInterceptorHandler handler) async {
        debugPrint('Error: ${err.message}');
        return handler.next(err);
      },
    ));
  }

  /// baseOptions
  BaseOptions get baseOptions => BaseOptions(
        baseUrl: baseUrl,
        connectTimeout: const Duration(seconds: 15),
        receiveTimeout: const Duration(seconds: 15),
        sendTimeout: const Duration(seconds: 15),
      );

  /// GET request
  Future<dynamic> get(
    String endpoint, {
    Map<String, dynamic>? queryParameters,
    bool forceRefresh = true,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    try {
      final response = await _dio.get<dynamic>(
        endpoint,
        cancelToken: cancelToken,
        queryParameters: queryParameters,
        options: options,
      );

      _validateResponse(response);

      return response.data;
    } on DioException catch (e) {
      _handleError(e);
    }
  }

  /// POST request
  Future<dynamic> post(
    String endpoint, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? body,
    Options? options,
  }) async {
    try {
      final response = await _dio.post<dynamic>(
        endpoint,
        queryParameters: queryParameters,

        /// If 415 code comes from api please change data format
        data: body,
        options: options,
      );

      _validateResponse(response);

      return response.data;
      // return Map<String, dynamic>.from(response.data as Map);
    } on DioException catch (e) {
      _handleError(e);
    }
  }

  /// PATCH request
  Future<dynamic> patch(
    String endpoint, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? body,
  }) async {
    try {
      final response = await _dio.patch<dynamic>(
        endpoint,
        queryParameters: queryParameters,
        data: json.encode(body),
      );

      _validateResponse(response);

      return response.data;
    } on DioException catch (e) {
      _handleError(e);
    }
  }

  /// DELETE request
  Future<void> delete(String endpoint) async {
    try {
      final response = await _dio.delete<dynamic>(
        endpoint,
      );

      _validateResponse(response);

      return response.data;
    } on DioException catch (e) {
      _handleError(e);
    }
  }

  // Patch request from uploading image
  Future<dynamic> uploadPatch(
    String endpoint, {
    Map<String, dynamic>? queryParameters,
    FormData? body,
  }) async {
    try {
      final response = await _dio.patch<dynamic>(
        endpoint,
        queryParameters: queryParameters,
        data: body,
      );

      _validateResponse(response);

      return response.data;
    } on DioException catch (e) {
      _handleError(e);
    }
  }

  /// PUT request
  Future<dynamic> put(
    String endpoint, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? body,
  }) async {
    try {
      final response = await _dio.put<dynamic>(
        endpoint,
        queryParameters: queryParameters,
        data: json.encode(body),
      );

      _validateResponse(response);

      return response.data;
    } on DioException catch (e) {
      _handleError(e);
    }
  }

  void _validateResponse(Response<dynamic> response) {
    final statusCode = response.statusCode ?? 0;

    if (response.data == null || statusCode < 200 || statusCode > 304) {
      throw ServerException(response.statusMessage, response.statusCode ?? 0);
    }
  }

  void _handleError(DioException e) {
    if (e.type == DioExceptionType.cancel) {
      //Suppress cancellation errors

      return;
    }

    final exception = ServerException.fromDio(e);

    throw exception;
  }
}
