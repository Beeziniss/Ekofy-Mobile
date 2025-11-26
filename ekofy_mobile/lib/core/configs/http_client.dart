import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

//Info: config for dio option
final dioConfig = Dio(
  BaseOptions(
    baseUrl: dotenv.env['BACKEND_URL']!,
    contentType: Headers.jsonContentType,
    responseType: ResponseType.json,
    validateStatus: (int? status) {
      return status != null;
    },
  ),
);
