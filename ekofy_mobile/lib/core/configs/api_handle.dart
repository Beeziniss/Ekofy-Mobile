import 'dart:developer';

import 'package:dio/dio.dart';
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
    Map<String, dynamic>? data,
    Map<String, dynamic>? queryParameters,
    T Function(Map<String, dynamic>)? fromJson,
  }) async {
    try {
      var dio = ref.read(dioProvider);
      final response = await dio.post(
        path,
        data: data, // Body data
        queryParameters: queryParameters, // Query params
      );

      if (response.isSuccessful) {
        if (response.statusCode == 204 || response.statusCode == 203) {
          return ResultType.success(null);
        }
        return ResultType.success(fromJson!(response.data));
      } else {
        final message =
            response.data['message'] ??
            response.data['detail'] ??
            'Unknown error';
        final status = response.data['status'];
        return ResultType.failure(message, status);
      }
    } on DioException catch (e) {
      log(e.toString());
      if (e.response != null) {
        String message = e.message ?? 'Unknown error';
        int statusCode = e.response!.statusCode ?? 400;

        if (e.response!.data is Map<String, dynamic>) {
          message =
              e.response!.data['message'] ??
              e.response!.data['detail'] ??
              message;
          if (e.response!.data['status'] is int) {
            statusCode = e.response!.data['status'];
          }
        } else if (e.response!.data is String) {
          message = e.response!.data;
        }

        return ResultType.failure(message, statusCode);
      }
      return ResultType.failure(e.message ?? 'Network error', 408);
    } catch (e) {
      return ResultType.failure('$e', 408);
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
        if (response.statusCode == 204 || response.statusCode == 203) {
          return ResultType.success(null);
        }
        return ResultType.success(fromJson(response.data));
      } else {
        final message =
            response.data['message'] ??
            response.data['detail'] ??
            'Unknown error';
        return ResultType.failure(message, response.data['status']);
      }
    } on DioException catch (e) {
      log(e.toString());
      if (e.response != null) {
        String message = e.message ?? 'Unknown error';
        int statusCode = e.response!.statusCode ?? 400;

        if (e.response!.data is Map<String, dynamic>) {
          message =
              e.response!.data['message'] ??
              e.response!.data['detail'] ??
              message;
          if (e.response!.data['status'] is int) {
            statusCode = e.response!.data['status'];
          }
        } else if (e.response!.data is String) {
          message = e.response!.data;
        }

        return ResultType.failure(message, statusCode);
      }
      return ResultType.failure(e.message ?? 'Network error', 408);
    } catch (e) {
      return ResultType.failure('$e', 408);
    }
  }
}
