import 'dart:async';
import 'dart:io';
import 'package:flutter_starter_kit/app/imports.dart';
import 'package:awesome_dio_interceptor/awesome_dio_interceptor.dart';
import 'package:dio/dio.dart';
import '../../exceptions/network_exceptions_handler.dart';
import 'network_interceptor.dart';

@injectable
class NetworkHelper {
  Dio dio = Dio();

  NetworkHelper() {
    final Map<String, dynamic> headers = {
      'Accept': 'application/json',
      'Content-Type': "application/json",
      'Device-Type': Platform.isAndroid ? 0 : 1
    };
    final BaseOptions options = BaseOptions(
      baseUrl: AppFlavors.baseUrl,
      connectTimeout: const Duration(milliseconds: 80000),
      receiveTimeout: const Duration(milliseconds: 80000),
      sendTimeout: const Duration(milliseconds: 80000),
      headers: headers,
    );
    dio.options = options;
    dio.interceptors.addAll([
      NetworkInterceptor(),
      AwesomeDioInterceptor(
        logRequestTimeout: false,
        logRequestHeaders: true,
        logResponseHeaders: false,
        logger: debugPrint,
      ),
    ]);
  }

  Future<dynamic> get(
    path, {
    Map<String, String>? headers,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      if (headers != null) dio.options.headers = headers;
      final Response response = await dio.get(path, queryParameters: queryParameters);
      return response.data;
    } on DioException catch (ex) {
      throw NetworkExceptionsHandler.handelException(ex);
    }
  }

  Future<dynamic> post(
    url, {
    dynamic body,
    Map<String, dynamic>? queryParameters,
    Map<String, String>? headers,
  }) async {
    try {
      if (headers != null) dio.options.headers = headers;
      final response = await dio.post(url, data: body, queryParameters: queryParameters);
      return response.data;
    } on DioException catch (ex) {
      throw await NetworkExceptionsHandler.handelException(ex);
    }
  }

  Future<dynamic> patch(
    url, {
    Map<String, String>? headers,
    dynamic body,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      if (headers != null) dio.options.headers = headers;
      final response = await dio.patch(url, data: body, queryParameters: queryParameters);
      return response.data;
    } on DioException catch (ex) {
      throw await NetworkExceptionsHandler.handelException(ex);
    }
  }

  Future<dynamic> delete(
    String url, {
    Map<String, String>? headers,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      if (headers != null) dio.options.headers = headers;
      final response = await dio.delete(url, queryParameters: queryParameters);
      return response.data;
    } on DioException catch (ex) {
      throw NetworkExceptionsHandler.handelException(ex);
    }
  }
}
