import 'package:ekofy_mobile/core/configs/response_extension.dart';
import 'package:ekofy_mobile/core/di/injector.dart';
import 'package:ekofy_mobile/core/utils/results/result_type.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart'; // nếu bạn dùng ResultType ở đây

class ApiHandle {
  final Ref ref;
  ApiHandle(this.ref);

  //INFO: for HttpPost
  Future<ResultType<T>> post<T>({
    required String path,
    required Map<String, dynamic> data,
    required T Function(Map<String, dynamic>) fromJson,
  }) async {
    try {
      var dio = ref.read(dioProvider);
      final response = await dio.post(path, data: data);

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
      var dio = ref.read(dioProvider);
      final response = await dio.get(path);

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
