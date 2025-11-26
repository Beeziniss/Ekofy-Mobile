import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:ekofy_mobile/core/configs/routes/app_route.dart';
import 'package:ekofy_mobile/core/di/injector.dart';
import 'package:ekofy_mobile/core/utils/constants/auth_constant.dart';
import 'package:ekofy_mobile/core/utils/helper.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AuthInterceptor extends Interceptor {
  final Ref ref;

  AuthInterceptor(this.ref);

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    //if no need token to auth -> go to next interceptor
    if (options.headers['requires-token'] == 'false') {
      options.headers.remove('requiresToken');
      return handler.next(options);
    }

    //get access token from local
    var appConfig = ref.read(appConfigProvider);
    var token = appConfig.token;
    log(token.toString());

    if (token == null || Helper.isTokenExpired(token)) {
      // load access token
      token = await loadToken;
    }

    //assign to header Authorize
    options.headers.addAll({'Authorization': 'Bearer $token'});
    return handler.next(options);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    if (err.response?.statusCode == HttpStatus.unauthorized) {
      log('** unauthorize. auto login again.. **');
      final authLocal = ref.read(authLocalDatasourceProvider);
      final refreshToken = await authLocal.getRefreshToken();
      if (refreshToken == null) {
        return handler.next(err);
      }

      try {
        final dio = ref.read(dioProvider);
        final response = await dio.post(
          '/auth/refresh-token',
          data: {'refreshToken': refreshToken},
          options: Options(headers: {'content-type': 'application/json'}),
        );
        final newAccessToken = response.data['accessToken'];
        final newRefreshToken = response.data['refreshToken'];

        if (newAccessToken != null) {
          // Lưu lại token mới
          await authLocal.updateToken(AuthConstant.accessToken, newAccessToken);
          await authLocal.updateToken(
            AuthConstant.refreshToken,
            newRefreshToken,
          );
          ref.read(appConfigProvider.notifier).setTokenCache(newAccessToken);

          // Gửi lại request cũ với token mới
          final clonedRequest = await _retryRequest(
            err.requestOptions,
            newAccessToken,
          );
          return handler.resolve(clonedRequest);
        } else {
          log('Refresh token failed: no access token returned');
          ref.read(authProvider.notifier).logout();
          //navigate to login
          rootNavigatorKey.currentState?.pushNamedAndRemoveUntil(
            RouteName.login,
            (route) => false,
          );
          return handler.next(err);
        }
      } catch (e) {
        log('Error refreshing token: $e');
        return handler.next(err);
      }
    }
    return handler.next(err);
  }

  @override
  void onResponse(
    Response<dynamic> response,
    ResponseInterceptorHandler handler,
  ) {
    return handler.next(response);
  }

  Future<String?> get loadToken async {
    var appConfig = ref.read(appConfigProvider);
    //get from cache
    var accessToken = appConfig.token;
    if (accessToken != null && !Helper.isTokenExpired(accessToken)) {
      return accessToken;
    }

    //set new token if not have cache
    var authLocal = ref.read(authLocalDatasourceProvider);
    var accessTokenFromSecureStorage = await authLocal.getAccessToken();
    if (accessTokenFromSecureStorage != null &&
        !Helper.isTokenExpired(accessToken)) {
      ref
          .watch(appConfigProvider.notifier)
          .setTokenCache(accessTokenFromSecureStorage);
      return accessTokenFromSecureStorage;
    }
    return null;
  }

  Future<Response<dynamic>> _retryRequest(
    RequestOptions requestOptions,
    String token,
  ) async {
    final dio = ref.read(dioProvider);
    return dio.request(
      requestOptions.path,
      data: requestOptions.data,
      queryParameters: requestOptions.queryParameters,
      options: Options(
        method: requestOptions.method,
        headers: {...requestOptions.headers, 'Authorization': 'Bearer $token'},
      ),
    );
  }
}
