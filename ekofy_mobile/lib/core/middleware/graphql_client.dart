// import 'dart:developer';

// import 'package:dio/dio.dart';
// import 'package:ekofy_mobile/core/di/injector.dart';
// import 'package:ekofy_mobile/core/utils/constants/auth_constant.dart';
// import 'package:ekofy_mobile/core/utils/helper.dart';
// import 'package:flutter_dotenv/flutter_dotenv.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:graphql_flutter/graphql_flutter.dart';

// final graphqlClientProvider = Provider<GraphQLClient>((ref) {
//   final httpLink = HttpLink('${dotenv.env['BACKEND_URL']}/graphql');

//   /// Custom AuthLink – thêm token vào header
//   final authLink = AuthLink(
//     getToken: () async {
//       final appConfig = ref.read(appConfigProvider);
//       var token = appConfig.token;

//       if (token == null || Helper.isTokenExpired(token)) {
//         token = await _loadToken(ref);
//       }

//       if (token == null) return null;
//       return 'Bearer $token';
//     },
//   );

//   /// ErrorLink – tự động refresh token khi 401
//   final errorLink = ErrorLink(
//     onGraphQLError: (request, forward, response) async {
//       // Kiểm tra lỗi 401 UNAUTHENTICATED
//       final hasAuthError = response.errors?.any((error) {
//         return error.extensions?['code'] == 'UNAUTHENTICATED' ||
//                error.message.toLowerCase().contains('unauthorized') ||
//                error.message.toLowerCase().contains('unauthenticated');
//       }) ?? false;

//       if (hasAuthError) {
//         log('🔒 Phát hiện lỗi 401, đang refresh token...');
        
//         final success = await _refreshToken(ref);

//         if (success) {
//           log('✅ Refresh token thành công, retry request');
//           final newToken = ref.read(appConfigProvider).token;
          
//           // Tạo request mới với token mới
//           final newRequest = request.updateContextEntry<HttpLinkHeaders>(
//             (headers) => HttpLinkHeaders(
//               headers: {
//                 ...headers?.headers ?? {},
//                 'Authorization': 'Bearer $newToken',
//               },
//             ),
//           );

//           // Retry request
//           return forward(newRequest);
//         } else {
//           log('❌ Refresh token thất bại, logout');
//           // Logout và redirect
//           _handleLogout(ref);
//         }
//       }

//       return null;
//     },
//   );

//   final link = authLink.concat(errorLink).concat(httpLink);

//   return GraphQLClient(
//     link: link,
//     cache: GraphQLCache(),
//   );
// });

// Future<String?> _loadToken(Ref ref) async {
//   final appConfig = ref.read(appConfigProvider);
//   final cached = appConfig.token;
//   if (cached != null && !Helper.isTokenExpired(cached)) return cached;

//   final authLocal = ref.read(authLocalDatasourceProvider);
//   final token = await authLocal.getAccessToken();

//   if (token != null && !Helper.isTokenExpired(token)) {
//     ref.read(appConfigProvider.notifier).setTokenCache(token);
//     return token;
//   }
//   return null;
// }

// Future<bool> _refreshToken(Ref ref) async {
//   try {
//     final authLocal = ref.read(authLocalDatasourceProvider);
//     final refreshToken = await authLocal.getRefreshToken();

//     if (refreshToken == null) return false;

//     final dio = ref.read(dioProvider);
//     final res = await dio.post(
//       '/auth/refresh-token',
//       data: {'refreshToken': refreshToken},
//       options: Options(headers: {'Content-Type': 'application/json'}),
//     );

//     final newAccessToken = res.data['accessToken'];
//     final newRefreshToken = res.data['refreshToken'];

//     if (newAccessToken == null || newRefreshToken == null) return false;

//     await authLocal.updateToken(AuthConstant.accessToken, newAccessToken);
//     await authLocal.updateToken(AuthConstant.refreshToken, newRefreshToken);

//     ref.read(appConfigProvider.notifier).setTokenCache(newAccessToken);

//     return true;
//   } catch (e) {
//     log('Refresh token error: $e');
//     return false;
//   }
// }