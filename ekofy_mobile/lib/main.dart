import 'package:ekofy_mobile/core/configs/graphql_client_provider.dart';
import 'package:ekofy_mobile/core/configs/routes/app_route.dart';
import 'package:ekofy_mobile/core/configs/theme/app_theme.dart';
import 'package:ekofy_mobile/core/providers/theme_provider.dart';
import 'package:ekofy_mobile/core/utils/notification.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:ekofy_mobile/core/di/injector.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

@pragma('vm:entry-point')
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  // If you're going to use other Firebase services in the background, such as Firestore,
  // make sure you call `Firebase.initializeApp()` before using other Firebase services.
  await Firebase.initializeApp();
}

void main() async {
  // Đảm bảo Flutter đã khởi động đầy đủ
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();

  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

  final NotificationService notificationService = NotificationService();
  // notificationService.getDeviceToken().then((value) {});
  notificationService.requestNotificationPermission();
  await NotificationService.localNotificationInit();
  NotificationService.registerForegroundHandler();

  await initHiveForFlutter();

  await HiveStore.openBox('graphql');

  await dotenv.load(fileName: ".env");

  AndroidOptions getAndroidOptions() =>
      const AndroidOptions(encryptedSharedPreferences: true);

  final ss = FlutterSecureStorage(aOptions: getAndroidOptions());
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  runApp(
    ProviderScope(
      overrides: [secureStorageProvider.overrideWithValue(ss)],
      child: const EkofyApp(),
    ),
    // ),
  );
}

class EkofyApp extends ConsumerWidget {
  const EkofyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final client = ref.watch(graphqlClientProvider);
    final themeMode = ref.watch(themeProvider);

    return GraphQLProvider(
      client: ValueNotifier(client),
      child: MaterialApp.router(
        localizationsDelegates: const [FlutterQuillLocalizations.delegate],
        debugShowCheckedModeBanner: false,
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        themeMode: themeMode,
        routerConfig: router(ref),
      ),
    );
  }
}
