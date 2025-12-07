import 'package:ekofy_mobile/core/utils/results/result_type.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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

  Future<ResultType> logout(Ref ref);

  Future<ResultType> loginWithGoogle(String googleToken);

  Future<ResultType> verifyOTP({required String email, required String providedOtp});
}
