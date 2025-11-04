import 'package:dio/dio.dart';
import 'package:ekofy_mobile/core/configs/response_extension.dart';
import 'package:ekofy_mobile/core/utils/results/result_type.dart'; // nếu bạn dùng ResultType ở đây

class ApiHandle {
  final Dio _dio;

  ApiHandle(this._dio);

  //INFO: for HttpPost
  Future<ResultType<T>> post<T>({
    required String path,
    required Map<String, dynamic> data,
    required T Function(Map<String, dynamic>) fromJson,
  }) async {
    try {
      final response = await _dio.post(path, data: data);

      if (response.isSuccessful) {
        return ResultType.success(fromJson(response.data));
      } else {
        final message = response.data['message'] ?? 'Unknown error';
        return ResultType.failure(message, statusCode: response.statusCode);
      }
    } catch (e) {
      return const ResultType.failure('Network error');
    }
  }

  //INFO: for HttpGet
  Future<ResultType<T>> get<T>({
    required String path,
    required T Function(Map<String, dynamic>) fromJson,
  }) async {
    try {
      final response = await _dio.get(path);

      if (response.isSuccessful) {
        return ResultType.success(fromJson(response.data));
      } else {
        final message = response.data['message'] ?? 'Unknown error';
        return ResultType.failure(message, statusCode: response.statusCode);
      }
    } catch (e) {
      return const ResultType.failure('Network error');
    }
  }
}
