import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

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

final httpLink = HttpLink(
  '${dotenv.env['BACKEND_URL']}/graphql',
  defaultHeaders: {'content-type': 'application/json'},
);
