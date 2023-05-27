part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.signIn(final String email, final String password) =
      AuthSignInEvent;

  const factory AuthEvent.signUp(
          final String email, final String password, final String name) =
      AuthSignUpEvent;

  const factory AuthEvent.googleSignIn() = AuthGoogleSignInEvent;

  const factory AuthEvent.signOut() = AuthSignOutEvent;
}

// abstract class AuthEvent extends Equatable {
//   @override
//   List<Object> get props => [];
// }

// // When the user signing in with email and password this event is called and the [AuthRepository] is called to sign in the user
// class SignInRequested extends AuthEvent {
  // final String email;
  // final String password;

//   SignInRequested(this.email, this.password);
// }

// // When the user signing up with email and password this event is called and the [AuthRepository] is called to sign up the user
// class SignUpRequested extends AuthEvent {
//   final String email;
//   final String password;
//   final String name;

//   SignUpRequested(this.email, this.password, this.name);
// }

// // When the user signing in with google this event is called and the [AuthRepository] is called to sign in the user
// class GoogleSignInRequested extends AuthEvent {}

// // When the user signing out this event is called and the [AuthRepository] is called to sign out the user
// class SignOutRequested extends AuthEvent {}
