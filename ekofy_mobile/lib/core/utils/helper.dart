import 'dart:developer';

import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';
import 'package:ekofy_mobile/core/di/injector.dart';
import 'package:ekofy_mobile/gql/generated/schema.graphql.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

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

  //info: format định dạng số tiền tệ
  static String formatCurrency(num value) {
    if (value % 1 == 0) {
      return NumberFormat('#,###').format(value); // không thập phân
    } else {
      return NumberFormat('#,###.##').format(value); // tối đa 2 thập phân
    }
  }

  static String formatDate(DateTime d) {
    return '${d.day.toString().padLeft(2, '0')}-${d.month.toString().padLeft(2, '0')}-${d.year}';
  }

  static String convertCurrencyCodeToSymbol(Enum$CurrencyType currency) {
    switch (currency) {
      case Enum$CurrencyType.USD:
        return '\$';
      case Enum$CurrencyType.EUR:
        return '€';
      case Enum$CurrencyType.GBP:
        return '£';
      case Enum$CurrencyType.JPY:
        return '¥';
      case Enum$CurrencyType.VND:
        return '₫';
      default:
        return currency.name; // Return the code itself if symbol is not known
    }
  }

  static String getLimitedDescription(String description, int maxWords) {
    final words = description.split(' ');

    if (words.length > maxWords) {
      // Cắt bớt và thêm '...' vào cuối
      return '${words.sublist(0, maxWords).join(' ')}...';
    } else {
      return description;
    }
  }
}
