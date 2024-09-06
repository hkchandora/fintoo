import 'dart:io';
import 'package:dio/dio.dart';
import 'package:fintoo/core/network/base_urls.dart';
import 'package:flutter/foundation.dart';

mixin BaseDio {
  Future<Dio> getBaseDio() async {
    BaseOptions options = BaseOptions(
      baseUrl: BaseUrls.baseUrl,
      connectTimeout: const Duration(minutes: 5),
      sendTimeout: const Duration(minutes: 5),
      receiveTimeout: const Duration(minutes: 5),
      responseType: ResponseType.json,
      headers: {
        HttpHeaders.acceptHeader: 'application/json',
        HttpHeaders.contentTypeHeader: 'application/json',
      },
    );
    Dio dio = Dio(options);

    dio.interceptors.add(
      LogInterceptor(
        request: kDebugMode,
        requestHeader: kDebugMode,
        requestBody: kDebugMode,
        responseHeader: kDebugMode,
        responseBody: kDebugMode,
      ),
    );
    return dio;
  }
}
