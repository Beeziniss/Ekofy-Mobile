import 'package:ekofy_mobile/core/utils/constants/auth_constant.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class AuthLocalDatasource {
  final FlutterSecureStorage secureStorage;

  AuthLocalDatasource(this.secureStorage);

  //info: save access + refresh token to secure storage
  Future<void> saveToken(String accessToken, String refreshToken) async {
    await secureStorage.write(
      key: AuthConstant.accessToken,
      value: accessToken,
    );
    await secureStorage.write(
      key: AuthConstant.refreshToken,
      value: refreshToken,
    );
  }

  //info: get access token from storage
  Future<String?> getAccessToken() async {
    return await secureStorage.read(key: AuthConstant.accessToken);
  }

  //info: get refresh token from storage
  Future<String?> getRefreshToken() async {
    return await secureStorage.read(key: AuthConstant.refreshToken);
  }

  //info:
  Future<void> updateToken(String tokenType, String value) async {
    await secureStorage.write(key: tokenType, value: value);
  }

  //info: remove token
  Future<void> removeToken() async {
    await secureStorage.delete(key: AuthConstant.accessToken);
    await secureStorage.delete(key: AuthConstant.refreshToken);
  }
}
