import 'package:ekofy_mobile/core/utils/result_type.dart';

abstract class AuthRepository {
  Future<Result> login({required String email, required String password});
  Future<Result<String?>> isAuthen();
}
