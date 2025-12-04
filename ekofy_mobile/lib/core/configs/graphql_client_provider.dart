import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:ekofy_mobile/core/di/injector.dart';
import 'package:ekofy_mobile/core/utils/constants/auth_constant.dart';
import 'package:ekofy_mobile/core/utils/helper.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

final graphqlClientProvider = Provider<GraphQLClient>((ref) {
  final AuthLink authLink = AuthLink(
    getToken: () async {
      // Try to get from AppConfig first
      var token = ref.read(appConfigProvider).token;

      // If not in memory, try local storage
      if (token == null) {
        token = await ref.read(authLocalDatasourceProvider).getAccessToken();
        if (token != null) {
          // Update cache
          ref.read(appConfigProvider.notifier).setTokenCache(token);
        }
      }

      if (token != null) {
        // log('GraphQL Token: $token');
        return 'Bearer $token';
      }
      return null;
    },
  );

  final httpLink = HttpLink(
    '${dotenv.env['BACKEND_URL']}/graphql',
    defaultHeaders: {'content-type': 'application/json'},
  );

  final errorLink = ErrorLink(
    onException: (request, forward, exception) async* {
      if (exception is ServerException &&
          exception.parsedResponse?.errors != null &&
          exception.parsedResponse!.errors!.any(
            (e) =>
                e.extensions?['code'] == 'AUTH_NOT_AUTHENTICATED' ||
                e.extensions?['status'] == 401,
          )) {
        log('GraphQL Unauthorized. Attempting refresh...');
        final authLocal = ref.read(authLocalDatasourceProvider);
        final refreshToken = await authLocal.getRefreshToken();

        if (refreshToken != null) {
          try {
            final dio = ref.read(dioProvider);
            final response = await dio.post(
              '/auth/refresh-token',
              data: {'refreshToken': refreshToken},
              options: Options(
                headers: {
                  'content-type': 'application/json',
                  'requires-token': 'false',
                },
              ),
            );

            final newAccessToken = response.data['accessToken'];
            final newRefreshToken = response.data['refreshToken'];

            log("new access: " + newAccessToken);

            if (newAccessToken != null) {
              await authLocal.updateToken(
                AuthConstant.accessToken,
                newAccessToken,
              );
              await authLocal.updateToken(
                AuthConstant.refreshToken,
                newRefreshToken,
              );
              ref
                  .read(appConfigProvider.notifier)
                  .setTokenCache(newAccessToken);

              // Retry request
              yield* forward(request);
              return;
            }
          } catch (e) {
            log('GraphQL Refresh failed: $e');
          }
        }

        // If refresh failed, logout
        ref.read(authProvider.notifier).logout();
      }

      throw exception;
    },
  );

  final Link link = errorLink.concat(authLink).concat(httpLink);

  return GraphQLClient(link: link, cache: GraphQLCache());
});
