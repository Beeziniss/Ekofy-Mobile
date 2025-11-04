import 'package:dio/dio.dart';

extension ResponseX on Response {
  bool get isSuccessful =>
      statusCode != null && statusCode! >= 200 && statusCode! < 300;

  bool get isClientError =>
      statusCode != null && statusCode! >= 400 && statusCode! < 500;

  bool get isServerError => statusCode != null && statusCode! >= 500;
}
