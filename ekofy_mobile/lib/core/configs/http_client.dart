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

class ErrorInterceptor extends Interceptor {
  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    final status = response.statusCode;
    final isValid = status != null && status >= 200 && status < 300;
    if (!isValid) {
      throw DioException.badResponse(
        statusCode: status!,
        requestOptions: response.requestOptions,
        response: response,
      );
    }
    super.onResponse(response, handler);
  }
}
