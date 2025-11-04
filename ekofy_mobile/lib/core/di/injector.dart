import 'package:dio/dio.dart';
import 'package:ekofy_mobile/core/configs/api_handle.dart';
import 'package:ekofy_mobile/core/configs/http_client.dart';
import 'package:ekofy_mobile/features/auth/data/datasources/auth_api_datasource.dart';
import 'package:ekofy_mobile/features/auth/data/datasources/auth_local_datasource.dart';
import 'package:ekofy_mobile/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:ekofy_mobile/features/auth/domain/repositories/auth_repository.dart';
import 'package:ekofy_mobile/features/auth/presentation/providers/auth_provider.dart';
// removed unused flutter/material import
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
// removed unused graphql_flutter import

// AndroidOptions getAndroidOptions() =>
//     const AndroidOptions(encryptedSharedPreferences: true);
//       final ss = FlutterSecureStorage(aOptions: getAndroidOptions());

//! EXTERNAL
final dioProvider = Provider<Dio>((ref) => dioConfig);
final apiHandleProvider = Provider<ApiHandle>((ref) => ApiHandle(dioConfig));

final secureStorageProvider = Provider<FlutterSecureStorage>((ref) {
  throw UnimplementedError('secureStorageProvider dc override trong main');
});

//!=========

//* === FOR SERVICE INJECT ===
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
  return AuthRepositoryImpl(api, local);
});

final authProvider = NotifierProvider<AuthNotifier, AuthState>(
  () => AuthNotifier(),
);
