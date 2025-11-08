import 'dart:async';

import 'package:ekofy_mobile/core/di/injector.dart';
import 'package:ekofy_mobile/features/auth/presentation/screens/login_screen.dart';
import 'package:ekofy_mobile/features/auth/presentation/screens/otp_screen.dart';
import 'package:ekofy_mobile/features/auth/presentation/screens/register_screen.dart';
import 'package:ekofy_mobile/features/auth/presentation/screens/splash.dart';
import 'package:ekofy_mobile/features/auth/presentation/providers/auth_provider.dart';
import 'package:ekofy_mobile/features/home/presentation/widgets/nav_tab_widget.dart';
import 'package:ekofy_mobile/features/library/presentation/screens/library_page.dart';
import 'package:ekofy_mobile/features/profile/presentation/screens/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RouteName {
  static const String home = '/home';
  static const String login = '/login';
  static const String register = '/register';
  static const String otp = '/otp';
  static const String start = '/';
  static const String library = '/library';
  static const String profile = '/profile';

  static const publicRoutes = [home, login, register];
}

GoRouter router(WidgetRef ref) {
  return GoRouter(
    initialLocation: RouteName.start,

    // info: refresh router khi auth state thay đổi
    refreshListenable: GoRouterRefreshStream(
      ref.read(authProvider.notifier).stream,
    ),

    redirect: (context, state) {
      // Check if route is public
      // if (RouteName.publicRoutes.contains(state.matchedLocation)) {
      //   return null;
      // }

      // Check authentication
      final authState = ref.read(authProvider);
      final isAuthenticated = authState is AuthAuthenticateSuccess;

      final isGoingToLoginOrRegister =
          state.matchedLocation == RouteName.login ||
          state.matchedLocation == RouteName.register;

      if (isAuthenticated && isGoingToLoginOrRegister) {
        return RouteName.home;
      }

      if (!isAuthenticated) {
        return RouteName.login;
      }

      return null;
    },

    routes: [
      GoRoute(
        path: RouteName.start,
        builder: (context, state) => const SplashScreen()
      ),
      GoRoute(
        path: RouteName.login,
        builder: (context, state) => const LoginPage(),
      ),
      GoRoute(
        path: RouteName.register,
        builder: (context, state) => const RegisterScreen(),
      ),
      GoRoute(
        path: RouteName.home,
        builder: (context, state) {
          // return HomeScreen(scaffoldKey: GlobalKey<ScaffoldState>());
          return NavTab();
        },
      ),
      GoRoute(
        path: RouteName.library,
        builder: (context, state) => const LibraryPage(),
      ),
      GoRoute(
        path: RouteName.profile,
        builder: (context, state) => const ProfilePage(),
      ),
      GoRoute(
        path: RouteName.otp,
        builder: (context, state) => const OtpScreen(),
      ),
    ],
  );
}

// Helper class để refresh router khi stream thay đổi
class GoRouterRefreshStream extends ChangeNotifier {
  GoRouterRefreshStream(Stream<dynamic> stream) {
    notifyListeners();
    _subscription = stream.asBroadcastStream().listen(
      (dynamic _) => notifyListeners(),
    );
  }

  late final StreamSubscription<dynamic> _subscription;

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }
}
