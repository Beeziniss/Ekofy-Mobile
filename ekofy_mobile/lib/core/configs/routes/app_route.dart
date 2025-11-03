import 'package:ekofy_mobile/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:ekofy_mobile/features/auth/presentation/screens/login_screen.dart';
import 'package:ekofy_mobile/features/auth/presentation/screens/otp_screen.dart';
import 'package:ekofy_mobile/features/auth/presentation/screens/register_screen.dart';
import 'package:ekofy_mobile/features/home/presentation/screens/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class RouteName {
  static const String home = '/home';
  static const String login = '/login';
  static const String register = '/register';
  static const String otp = '/otp';

  static const publicRoutes = [home, login, register];
}

final router = GoRouter(
  initialLocation: RouteName.login,
  redirect: (context, state) {
    if (RouteName.publicRoutes.contains(state.fullPath)) {
      return null;
    }
    if (context.read<AuthBloc>().state is AuthLoginSuccess) {
      return null;
    }
    return RouteName.login;
  },
  routes: [
    GoRoute(path: RouteName.login, builder: (context, state) => LoginPage()),
    GoRoute(
      path: RouteName.register,
      builder: (context, state) => RegisterScreen(),
    ),
    GoRoute(
      path: RouteName.home,
      builder: (context, state) {
        return HomeScreen(scaffoldKey: GlobalKey<ScaffoldState>());
      },
    ),
    GoRoute(path: RouteName.otp, builder: (context, state) => OtpScreen()),

  ],
);
