import 'package:ekofy_mobile/core/configs/theme/app_theme.dart';
import 'package:ekofy_mobile/features/home/presentation/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'BE_Vietnam_Pro',
        colorScheme: AppTheme.darkTheme.colorScheme,
      ),
      home: const HomePage(),
    );
  }
}
