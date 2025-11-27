import 'package:dio/dio.dart';
import 'package:ekofy_mobile/core/configs/api_handle.dart';
import 'package:ekofy_mobile/core/configs/graphql_client_provider.dart';
import 'package:ekofy_mobile/core/configs/http_client.dart';
import 'package:ekofy_mobile/core/middleware/auth_interceptor.dart';
import 'package:ekofy_mobile/core/providers/app_config_provider.dart';
import 'package:ekofy_mobile/core/utils/helper.dart';
import 'package:ekofy_mobile/features/auth/data/datasources/auth_api_datasource.dart';
import 'package:ekofy_mobile/features/auth/data/datasources/auth_local_datasource.dart';
import 'package:ekofy_mobile/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:ekofy_mobile/features/auth/domain/repositories/auth_repository.dart';
import 'package:ekofy_mobile/features/auth/presentation/providers/auth_provider.dart';
import 'package:ekofy_mobile/features/profile/data/datasource/profile_api_datasource.dart';
import 'package:ekofy_mobile/features/profile/presentation/providers/profile_notifier.dart';
import 'package:ekofy_mobile/features/profile/presentation/providers/profile_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

//* === EXTERNAL INJECT ===
final dioProvider = Provider<Dio>((ref) {
  dioConfig;
  dioConfig.interceptors.add(AuthInterceptor(ref));
  return dioConfig;
});

final apiHandleProvider = Provider<ApiHandle>((ref) => ApiHandle(ref));

final secureStorageProvider = Provider<FlutterSecureStorage>((ref) {
  throw UnimplementedError('secureStorageProvider dc override trong main');
});

final jwtPayloadProvider = StateProvider<Map<String, dynamic>?>((ref) => null);

//* =========


//* === INTERNAL INJECT ===
final helperProvider = Provider<Helper>((ref) {
  return Helper();
});

final appConfigProvider = StateNotifierProvider<AppStateNotifier, AppConfig>(
  (ref) => AppStateNotifier(),
);

//* =========


//* === AUTH INJECT ===
final authLocalDatasourceProvider = Provider<AuthLocalDatasource>((ref) {
  final secureStorage = ref.watch(secureStorageProvider);
  return AuthLocalDatasource(secureStorage);
});

final authApiDatasourceProvider = Provider<AuthApiDatasource>((ref) {
  final apiHandle = ref.watch(apiHandleProvider);
  return AuthApiDatasource(apiHandle);
});

final authRepositoryProvider = Provider<AuthRepository>((ref) {
  final api = ref.watch(authApiDatasourceProvider);
  final local = ref.watch(authLocalDatasourceProvider);
  return AuthRepositoryImpl(api, local, ref);
});

final authProvider = NotifierProvider<AuthNotifier, AuthState>(
  () => AuthNotifier(),
);


//* PROFILE INJECT 
// final profileApiDatasource = Provider<ProfileApiDatasource>((ref) => {
//   final graphqlApiHandle = ref.watch(graphqlClientProvider);
//   return ProfileApiDatasource(graphqlClientProvider, ref);
// });

final profileProvider = StateNotifierProvider<ProfileNotifier, ProfileState>((
  ref,
) {
  final client = ref.watch(graphqlClientProvider);
  final apiDatasource = ProfileApiDatasource(client, ref);
  return ProfileNotifier(ref, apiDatasource);
});
//* =========
