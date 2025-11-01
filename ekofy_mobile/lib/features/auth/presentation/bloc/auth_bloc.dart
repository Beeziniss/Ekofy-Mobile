import 'package:ekofy_mobile/features/auth/domain/repositories/auth_repository.dart';
import 'package:ekofy_mobile/features/auth/presentation/bloc/auth_event.dart';
import 'package:ekofy_mobile/features/auth/presentation/bloc/auth_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(this.authRepository) : super(AuthInitial()) {
    on<AuthLoginStarted>(_onLoginStarted);
    on<AuthRegisterStarted>(_onRegisterStarted);
  }

  final AuthRepository authRepository;

  void _onLoginStarted(AuthLoginStarted event, Emitter<AuthState> emit) async {
    //info: after press or trigger event, change State of its
    emit(AuthLoginInProgress());
    //info: call repo to get res from event params
    final isLoggedIn = await authRepository.login(email: event.email, password: event.password);

    if(isLoggedIn) {
      emit(AuthLoginSuccess());
    }
    else{
      emit(AuthLoginFailure());
    }
  }

  void _onRegisterStarted(AuthRegisterStarted event, Emitter<AuthState> emit) {}
}
