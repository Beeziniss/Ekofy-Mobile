import 'package:ekofy_mobile/core/configs/api_handle.dart';
import 'package:ekofy_mobile/core/configs/http_client.dart';
import 'package:ekofy_mobile/core/configs/routes/app_route.dart';
import 'package:ekofy_mobile/core/configs/theme/app_theme.dart';
import 'package:ekofy_mobile/features/auth/presentation/providers/auth_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:ekofy_mobile/core/di/injector.dart';

late final ApiHandle _apiHandle;

void main() async {
  // Đảm bảo Flutter đã khởi động đầy đủ
  WidgetsFlutterBinding.ensureInitialized();

  // final container = ProviderContainer();
  // await container.read(authProvider.notifier).authenticate();

  await dotenv.load(fileName: ".env");

  _apiHandle = ApiHandle(dio);

  AndroidOptions getAndroidOptions() =>
      const AndroidOptions(encryptedSharedPreferences: true);

  final ss = FlutterSecureStorage(aOptions: getAndroidOptions());
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  runApp(
    // Wrap với ProviderScope và override secureStorageProvider
    ProviderScope(
      overrides: [
        // Override secureStorageProvider với instance thực tế
        secureStorageProvider.overrideWithValue(ss),
      ],
      child: const EkofyApp(),
    ),
  );
}

class EkofyApp extends ConsumerWidget {
  const EkofyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'BE_Vietnam_Pro',
          colorScheme: AppTheme.darkTheme.colorScheme,
        ),
        routerConfig: router(ref),
      ),
    );
  }
}
