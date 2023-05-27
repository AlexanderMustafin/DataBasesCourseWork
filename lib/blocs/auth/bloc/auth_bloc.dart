import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import '../../../repositories/auth/auth_repository.dart';

part 'auth_bloc.freezed.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository authRepository;
  AuthBloc({required this.authRepository})
      : super(const AuthState.unAuthenticated()) {
    // When User Presses the SignIn Button, we will send the SignInRequested Event to the AuthBloc to handle it and emit the Authenticated State if the user is authenticated
    on<AuthSignInEvent>((event, emit) async {
      emit(const AuthState.loading());
      try {
        await authRepository.signIn(
            email: event.email, password: event.password);
        emit(const AuthState.authenticated());
      } catch (e) {
        emit(AuthState.error(e.toString()));
        emit(const AuthState.unAuthenticated());
      }
    });
    // When User Presses the SignUp Button, we will send the SignUpRequest Event to the AuthBloc to handle it and emit the Authenticated State if the user is authenticated
    on<AuthSignUpEvent>((event, emit) async {
      emit(const AuthState.loading());
      try {
        await authRepository.signUp(
            email: event.email, password: event.password, name: event.name);
        emit(const AuthState.authenticated());
      } catch (e) {
        emit(AuthState.error(e.toString()));
        emit(const AuthState.unAuthenticated());
      }
    });
    // When User Presses the Google Login Button, we will send the GoogleSignInRequest Event to the AuthBloc to handle it and emit the Authenticated State if the user is authenticated
    on<AuthGoogleSignInEvent>((event, emit) async {
      emit(const AuthState.loading());
      try {
        await authRepository.signInWithGoogle();
        emit(const AuthState.authenticated());
      } catch (e) {
        emit(AuthState.error(e.toString()));
        emit(const AuthState.unAuthenticated());
      }
    });
    // When User Presses the SignOut Button, we will send the SignOutRequested Event to the AuthBloc to handle it and emit the UnAuthenticated State
    on<AuthSignOutEvent>((event, emit) async {
      emit(const AuthState.loading());
      await authRepository.signOut();
      emit(const AuthState.unAuthenticated());
    });
  }
}
