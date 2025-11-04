import 'package:ekofy_mobile/core/configs/http_client.dart';
import 'package:ekofy_mobile/core/configs/routes/app_route.dart';
import 'package:ekofy_mobile/core/configs/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:ekofy_mobile/core/di/injector.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

void main() async {
  // Đảm bảo Flutter đã khởi động đầy đủ
  WidgetsFlutterBinding.ensureInitialized();

  await initHiveForFlutter();

  await HiveStore.openBox('graphql');

  await dotenv.load(fileName: ".env");

  AndroidOptions getAndroidOptions() =>
      const AndroidOptions(encryptedSharedPreferences: true);

  final ss = FlutterSecureStorage(aOptions: getAndroidOptions());
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  final Link link = httpLink;
  ValueNotifier<GraphQLClient> client = ValueNotifier(
    GraphQLClient(
      link: link,
      cache: GraphQLCache(store: HiveStore()),
    ),
  );

  runApp(
    GraphQLProvider(
      client: client,
      child: // Wrap với ProviderScope và override secureStorageProvider
      ProviderScope(
        overrides: [secureStorageProvider.overrideWithValue(ss)],
        child: const EkofyApp(),
      ),
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
