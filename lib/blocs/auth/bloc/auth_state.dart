part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.loading() = AuthLoadingState;
  const factory AuthState.authenticated() = AuthAuthenticatedState;
  const factory AuthState.unAuthenticated() = AuthUnAuthenticatedState;
  const factory AuthState.error(error) = AuthErrorState;
}

// @immutable
// abstract class AuthState extends Equatable {}

// // When the user presses the signin or signup button the state is changed to loading first and then to Authenticated.
// class Loading extends AuthState {
//   @override
//   List<Object?> get props => [];
// }

// // When the user is authenticated the state is changed to Authenticated.
// class Authenticated extends AuthState {
//   @override
//   List<Object?> get props => [];
// }

// // This is the initial state of the bloc. When the user is not authenticated the state is changed to Unauthenticated.
// class UnAuthenticated extends AuthState {
//   @override
//   List<Object?> get props => [];
// }

// // If any error occurs the state is changed to AuthError.
// class AuthError extends AuthState {
//   final String error;

//   AuthError(this.error);
//   @override
//   List<Object?> get props => [error];
// }
