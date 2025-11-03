import 'package:ekofy_mobile/features/auth/domain/repositories/auth_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utils/result_type.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(this.authRepository) : super(AuthInitial()) {
    on<AuthLoginStarted>(_onLoginStarted);
    on<AuthRegisterStarted>(_onRegisterStarted);
    on<AuthAuthenticateStarted>(_onAuthenticateStarted);
  }

  final AuthRepository authRepository;

  void _onLoginStarted(AuthLoginStarted event, Emitter<AuthState> emit) async {
    //info: after press or trigger event, change State of its
    emit(AuthLoginInProgress());
    Future.delayed(Duration(seconds: 3));
    //info: call repo to get res from event params
    final result = await authRepository.login(
      email: event.email,
      password: event.password,
    );
    return (switch (result) {

      Success() => emit(AuthLoginSuccess()),
      Failure() => emit(AuthLoginFailure("Login fail!"))
    });
  }

  void _onRegisterStarted(AuthRegisterStarted event, Emitter<AuthState> emit) {}

  void _onAuthenticateStarted(AuthAuthenticateStarted event, Emitter<AuthState> emit) async {
    Result result = await authRepository.isAuthen();
    return (switch (result){
      Success(data: final token) when token != null =>
          emit(AuthAuthenticateSuccess(token)),
      Success() => emit(AuthAuthenticateUnauthenticated()),
      Failure() => emit(AuthAuthenticateFailure(result.message)),
    });
  }
}
