import 'package:dio/dio.dart';

class NetworkInterceptor extends QueuedInterceptorsWrapper {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    return handler.next(options);
  }
}
