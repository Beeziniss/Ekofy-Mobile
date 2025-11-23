import 'package:flutter_riverpod/legacy.dart';

class AppState {
  final String? userId;

  AppState({this.userId});

  AppState copyWith({String? userId}) {
    return AppState(userId: userId ?? this.userId);
  }
}

class AppStateNotifier extends StateNotifier<AppState> {
  AppStateNotifier() : super(AppState());

  void setUserId(String id) {
    state = state.copyWith(userId: id);
  }

  void reset() {
    state = AppState(); // Clear all
  }
}
