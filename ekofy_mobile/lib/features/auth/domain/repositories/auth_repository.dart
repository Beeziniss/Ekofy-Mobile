import 'package:ekofy_mobile/core/utils/results/result_type.dart';

abstract class AuthRepository {
  Future<ResultType> login({required String email, required String password});
  Future<ResultType<String?>> getAuthenToken();
}
