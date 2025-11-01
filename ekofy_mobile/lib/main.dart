import 'package:ekofy_mobile/core/configs/http_client.dart';
import 'package:ekofy_mobile/core/configs/theme/app_theme.dart';
import 'package:ekofy_mobile/features/auth/data/datasources/auth_api_datasource.dart';
import 'package:ekofy_mobile/features/auth/data/datasources/auth_local_datasource.dart';
import 'package:ekofy_mobile/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:ekofy_mobile/features/auth/domain/repositories/auth_repository.dart';
import 'package:ekofy_mobile/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:ekofy_mobile/features/home/presentation/widgets/main_tab_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  AndroidOptions getAndroidOptions() =>
      const AndroidOptions(encryptedSharedPreferences: true);

  final ss = FlutterSecureStorage(aOptions: getAndroidOptions());
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(EkofyApp(secureStorage: ss));
}

class EkofyApp extends StatelessWidget {
  const EkofyApp({super.key, required this.secureStorage});

  final FlutterSecureStorage secureStorage;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => AuthRepositoryImpl(
        AuthApiDatasource(dio),
        AuthLocalDatasource(secureStorage)
      ),
      child: BlocProvider(
        create: (context) => AuthBloc(context.read<AuthRepository>()),
        child: SafeArea(
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              fontFamily: 'BE_Vietnam_Pro',
              colorScheme: AppTheme.darkTheme.colorScheme,
            ),
            home: const MainTab(),
          ),
        ),
      ),
    );
  }
}
