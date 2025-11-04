import 'package:ekofy_mobile/core/utils/results/result_type.dart';

abstract class AuthRepository {
  Future<ResultType> login({required String email, required String password});

  Future<ResultType> register({
    required String email,
    required String password,
    required String confirmPassword,
    required String fullName,
    required DateTime birthDate,
    required String gender,
    required String displayName,
  });

  Future<ResultType<String?>> getAuthenToken();
}
