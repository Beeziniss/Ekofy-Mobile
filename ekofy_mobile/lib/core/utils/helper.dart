import 'dart:convert';
import 'dart:developer';

import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';
import 'package:ekofy_mobile/core/di/injector.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Helper {
  //info: decode payload of jwt
  static Future<Map<String, dynamic>?> decodeJwtUnverified(
    WidgetRef ref,
  ) async {
    try {
      final authLocal = ref.read(authLocalDatasourceProvider);
      String? token = await authLocal.getAccessToken();
      if (token == null || token.isEmpty) {
        return null;
      }
      final jwt = JWT.decode(token);
      // log(jsonEncode(jwt.payload));
      ref.read(jwtPayloadProvider.notifier).state = jwt.payload;
      return jwt.payload;
    } on JWTExpiredException catch (ex) {
      log(ex.message);
      return null;
    } catch (e) {
      log('Error decoding unverified JWT: $e');
      return null;
    }
  }
}
