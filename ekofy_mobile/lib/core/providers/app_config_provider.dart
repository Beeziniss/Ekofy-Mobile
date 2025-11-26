import 'package:flutter_riverpod/legacy.dart';

class AppConfig {
  final String? token;

  AppConfig({this.token});

  AppConfig copyWith({String? token}) {
    return AppConfig(token: token ?? this.token);
  }
}

class AppStateNotifier extends StateNotifier<AppConfig> {
  AppStateNotifier() : super(AppConfig());

  void setTokenCache(String token) {
    state = state.copyWith(token: token);
  }

  void reset() {
    state = AppConfig(); // Clear all
  }
}
