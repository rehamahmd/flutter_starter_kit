import 'package:dio/dio.dart';
import 'package:flutter_starter_kit/app/imports.dart';

class NetworkExceptionsHandler {
  static handelException(DioException ex, StackTrace st) async {
    final response = ex.response;
    final exception = switch (response?.statusCode) {
      401 => const UnAuthorizeException(),
      403 => const ForbiddenException(),
      400 => OperationException("400ERROR"),
      500 => const ServerException(),
      _ => const UnCaughtException(),
    };
    Error.throwWithStackTrace(exception, st);
  }
}
