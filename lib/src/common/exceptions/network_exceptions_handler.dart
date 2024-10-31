import 'package:dio/dio.dart';
import 'package:flutter_starter_kit/app/imports.dart';

class NetworkExceptionsHandler {
  // Replace statusCode with MessageCode ??
  static handelException(DioException exception) async {
    switch (exception.response?.statusCode) {
      case 401:
        // SharedPreferencesStorage.clear(StorageKeys.authData); // TODO
        throw const UnAuthorizeException(); //Authentication is required or failed.
      case 403:
        throw const ForbiddenException(); //Authentication succeeded, but the authenticated user doesn't have the necessary permissions.
      case 400:
        final errorMessage = exception.response?.data?['messageCode'];
        throw OperationException(errorMessage);
      case 500:
        throw const ServerException();
      default:
        throw const UnCaughtException();
    }
  }
}
