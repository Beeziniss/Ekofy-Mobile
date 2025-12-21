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
import 'package:ekofy_mobile/features/request/data/datasources/request_api_datasource.dart';
import 'package:ekofy_mobile/features/request/data/repositories/request_repository_impl.dart';
import 'package:ekofy_mobile/features/request/domain/repositories/request_repository.dart';
import 'package:ekofy_mobile/features/request/presentation/providers/public_request/request_notifier.dart';
import 'package:ekofy_mobile/features/request/presentation/providers/public_request/request_state.dart';
import 'package:ekofy_mobile/features/inbox/data/datasource/inbox_api_datasource.dart';
import 'package:ekofy_mobile/features/inbox/data/repositories/inbox_repository_impl.dart';
import 'package:ekofy_mobile/features/inbox/domain/repositories/inbox_repository.dart';
import 'package:ekofy_mobile/features/inbox/presentation/providers/inbox_notifier.dart';
import 'package:ekofy_mobile/features/inbox/presentation/providers/inbox_state.dart';
import 'package:ekofy_mobile/features/transaction/data/datasource/transaction_api_datasource.dart';
import 'package:ekofy_mobile/features/transaction/data/repositories/transaction_repository.dart';
import 'package:ekofy_mobile/features/transaction/data/repositories/transaction_repository_impl.dart';
import 'package:ekofy_mobile/features/order/data/datasources/order_api_datasource.dart';
import 'package:ekofy_mobile/features/order/data/repositories/order_repository_impl.dart';
import 'package:ekofy_mobile/features/order/domain/repositories/order_repository.dart';
import 'package:ekofy_mobile/features/order/presentation/providers/order_notifier.dart';
import 'package:ekofy_mobile/features/order/presentation/providers/order_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

//* === EXTERNAL INJECT ===
final dioProvider = Provider<Dio>((ref) {
  dioConfig;
  dioConfig.interceptors.add(AuthInterceptor(ref));
  dioConfig.interceptors.addAll([ErrorInterceptor()]);
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
  return AuthRepositoryImpl(api, local);
});

final authProvider = NotifierProvider<AuthNotifier, AuthState>(
  () => AuthNotifier(),
);

//* PROFILE INJECT
final profileApiDatasourceProvider = Provider<ProfileApiDatasource>((ref) {
  final graphqlApiHandle = ref.watch(graphqlClientProvider);
  return ProfileApiDatasource(graphqlApiHandle, ref);
});

// final profileProvider = StateNotifierProvider<ProfileNotifier, ProfileState>((
//   ref,
// ) {
//   final client = ref.watch(graphqlClientProvider);
//   final apiDatasource = ProfileApiDatasource(client, ref);
//   return ProfileNotifier(ref, apiDatasource);
// });
//* =========

//* REQUEST INJECT
final requestApiDatasourceProvider = Provider<RequestApiDataSource>((ref) {
  final client = ref.watch(graphqlClientProvider);
  return RequestApiDataSource(client);
});

final requestRepositoryProvider = Provider<RequestRepository>((ref) {
  final api = ref.watch(requestApiDatasourceProvider);
  return RequestRepositoryImpl(api);
});

final requestProvider = StateNotifierProvider<RequestNotifier, RequestState>((
  ref,
) {
  final requestRepository = ref.read(requestRepositoryProvider);
  return RequestNotifier(ref, requestRepository);
});

//* INBOX INJECT
final inboxApiDatasourceProvider = Provider<InboxApiDatasource>((ref) {
  final client = ref.watch(graphqlClientProvider);
  return InboxApiDatasource(client);
});

final inboxRepositoryProvider = Provider<InboxRepository>((ref) {
  final api = ref.watch(inboxApiDatasourceProvider);
  return InboxRepositoryImpl(api);
});

final inboxProvider = StateNotifierProvider<InboxNotifier, InboxState>((ref) {
  final inboxRepository = ref.read(inboxRepositoryProvider);
  return InboxNotifier(inboxRepository, ref);
});
//* =========

//* TRANSACTION INJECT
final transactionApiDatasourceProvider = Provider<TransactionApiDatasource>((
  ref,
) {
  final client = ref.watch(graphqlClientProvider);
  return TransactionApiDatasource(client);
});

final transactionRepositoryProvider = Provider<TransactionRepository>((ref) {
  final datasource = ref.watch(transactionApiDatasourceProvider);
  return TransactionRepositoryImpl(datasource, ref);
});
//* =========

//* ORDER INJECT
final orderApiDatasourceProvider = Provider<OrderApiDatasource>((ref) {
  final client = ref.watch(graphqlClientProvider);
  return OrderApiDatasource(client);
});

final orderRepositoryProvider = Provider<OrderRepository>((ref) {
  final api = ref.watch(orderApiDatasourceProvider);
  return OrderRepositoryImpl(api);
});

final orderProvider = StateNotifierProvider<OrderNotifier, OrderState>((ref) {
  final orderRepository = ref.read(orderRepositoryProvider);
  return OrderNotifier(ref, orderRepository);
});
//* =========
