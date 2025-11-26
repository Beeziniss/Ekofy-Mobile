import 'dart:developer';

import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';
import 'package:ekofy_mobile/core/di/injector.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Helper {
  //info: decode payload of jwt
  static Future<Map<String, dynamic>?> decodeJwtUnverified(Ref ref) async {
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

  //info: check if the token expire or not
  static bool isTokenExpired(String? token) {
    if (token == null) {
      return true;
    }

    String key;
    if (dotenv.env['JWT_KEY'] == null) {
      log('The jwt key in environment is null!!');
      return true;
    } else {
      key = dotenv.env['JWT_KEY']!;
    }
    try {
      JWT.verify(token, SecretKey(key));
      return false;
    } on JWTExpiredException {
      log('token expired');
      return true;
    }
  }
}
