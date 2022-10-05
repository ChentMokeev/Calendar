import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class DioSettings {
  DioSettings() {
    setup();
  }
  final Dio dio = Dio(
    BaseOptions(
      baseUrl: 'https://megalab-app.herokuapp.com/api/v1',
      contentType: 'application/json',
    ),
  );

  void setup() {
    final interceptors = dio.interceptors;
    interceptors.clear();

    final headerInterceptor = QueuedInterceptorsWrapper(
      onResponse: (e, handler) {
        return handler.next(e);
      },
      onRequest: (options, handler) {
        return handler.next(options);
      },
      onError: (e, handler) {
        return handler.next(e);
      },
    );

    final logInterceptor = LogInterceptor(
      request: true,
      error: true,
      requestHeader: true,
      requestBody: true,
      responseHeader: true,
      responseBody: true,
    );

    interceptors.addAll([headerInterceptor, if (kDebugMode) logInterceptor]);
  }
}
