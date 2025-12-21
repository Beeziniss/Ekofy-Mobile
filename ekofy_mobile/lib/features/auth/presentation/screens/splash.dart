import 'package:ekofy_mobile/core/configs/assets/app_images.dart';
import 'package:ekofy_mobile/core/configs/routes/app_route.dart';
import 'package:ekofy_mobile/core/di/injector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'package:ekofy_mobile/features/auth/presentation/providers/auth_provider.dart';

class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({super.key});

  @override
  ConsumerState<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _checkAuth();
  }

  Future<void> _checkAuth() async {
    await Future.delayed(const Duration(seconds: 5));
    await ref.read(authProvider.notifier).authenticate();

    final authState = ref.read(authProvider);
    final isAuthenticated = authState is AuthAuthenticateSuccess;

    if (isAuthenticated) {
      context.go(RouteName.home);
    } else {
      context.go(RouteName.login);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Hình nền PNG từ asset
          Image.asset(
            AppImages.splashImg, // Đường dẫn tới file ảnh của bạn
            fit: BoxFit.cover,
          ),

          // CircularProgressIndicator gần dưới
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 40.0),
              child: Image.asset(AppImages.loader, gaplessPlayback: true),
            ),
          ),
        ],
      ),
    );
  }
}
