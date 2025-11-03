import 'package:dio/dio.dart';

final dio = Dio(
  BaseOptions(
    baseUrl: 'https://beeziniss.online',
    contentType: Headers.jsonContentType,
    responseType: ResponseType.json,
    validateStatus: (int? status) {
      return status != null;
    },
  ),
);
