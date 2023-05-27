// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) signIn,
    required TResult Function(String email, String password, String name)
        signUp,
    required TResult Function() googleSignIn,
    required TResult Function() signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? signIn,
    TResult? Function(String email, String password, String name)? signUp,
    TResult? Function()? googleSignIn,
    TResult? Function()? signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? signIn,
    TResult Function(String email, String password, String name)? signUp,
    TResult Function()? googleSignIn,
    TResult Function()? signOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthSignInEvent value) signIn,
    required TResult Function(AuthSignUpEvent value) signUp,
    required TResult Function(AuthGoogleSignInEvent value) googleSignIn,
    required TResult Function(AuthSignOutEvent value) signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthSignInEvent value)? signIn,
    TResult? Function(AuthSignUpEvent value)? signUp,
    TResult? Function(AuthGoogleSignInEvent value)? googleSignIn,
    TResult? Function(AuthSignOutEvent value)? signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthSignInEvent value)? signIn,
    TResult Function(AuthSignUpEvent value)? signUp,
    TResult Function(AuthGoogleSignInEvent value)? googleSignIn,
    TResult Function(AuthSignOutEvent value)? signOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AuthSignInEventCopyWith<$Res> {
  factory _$$AuthSignInEventCopyWith(
          _$AuthSignInEvent value, $Res Function(_$AuthSignInEvent) then) =
      __$$AuthSignInEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$AuthSignInEventCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthSignInEvent>
    implements _$$AuthSignInEventCopyWith<$Res> {
  __$$AuthSignInEventCopyWithImpl(
      _$AuthSignInEvent _value, $Res Function(_$AuthSignInEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$AuthSignInEvent(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthSignInEvent implements AuthSignInEvent {
  const _$AuthSignInEvent(this.email, this.password);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.signIn(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthSignInEvent &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthSignInEventCopyWith<_$AuthSignInEvent> get copyWith =>
      __$$AuthSignInEventCopyWithImpl<_$AuthSignInEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) signIn,
    required TResult Function(String email, String password, String name)
        signUp,
    required TResult Function() googleSignIn,
    required TResult Function() signOut,
  }) {
    return signIn(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? signIn,
    TResult? Function(String email, String password, String name)? signUp,
    TResult? Function()? googleSignIn,
    TResult? Function()? signOut,
  }) {
    return signIn?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? signIn,
    TResult Function(String email, String password, String name)? signUp,
    TResult Function()? googleSignIn,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthSignInEvent value) signIn,
    required TResult Function(AuthSignUpEvent value) signUp,
    required TResult Function(AuthGoogleSignInEvent value) googleSignIn,
    required TResult Function(AuthSignOutEvent value) signOut,
  }) {
    return signIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthSignInEvent value)? signIn,
    TResult? Function(AuthSignUpEvent value)? signUp,
    TResult? Function(AuthGoogleSignInEvent value)? googleSignIn,
    TResult? Function(AuthSignOutEvent value)? signOut,
  }) {
    return signIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthSignInEvent value)? signIn,
    TResult Function(AuthSignUpEvent value)? signUp,
    TResult Function(AuthGoogleSignInEvent value)? googleSignIn,
    TResult Function(AuthSignOutEvent value)? signOut,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(this);
    }
    return orElse();
  }
}

abstract class AuthSignInEvent implements AuthEvent {
  const factory AuthSignInEvent(final String email, final String password) =
      _$AuthSignInEvent;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$AuthSignInEventCopyWith<_$AuthSignInEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthSignUpEventCopyWith<$Res> {
  factory _$$AuthSignUpEventCopyWith(
          _$AuthSignUpEvent value, $Res Function(_$AuthSignUpEvent) then) =
      __$$AuthSignUpEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password, String name});
}

/// @nodoc
class __$$AuthSignUpEventCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthSignUpEvent>
    implements _$$AuthSignUpEventCopyWith<$Res> {
  __$$AuthSignUpEventCopyWithImpl(
      _$AuthSignUpEvent _value, $Res Function(_$AuthSignUpEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? name = null,
  }) {
    return _then(_$AuthSignUpEvent(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthSignUpEvent implements AuthSignUpEvent {
  const _$AuthSignUpEvent(this.email, this.password, this.name);

  @override
  final String email;
  @override
  final String password;
  @override
  final String name;

  @override
  String toString() {
    return 'AuthEvent.signUp(email: $email, password: $password, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthSignUpEvent &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthSignUpEventCopyWith<_$AuthSignUpEvent> get copyWith =>
      __$$AuthSignUpEventCopyWithImpl<_$AuthSignUpEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) signIn,
    required TResult Function(String email, String password, String name)
        signUp,
    required TResult Function() googleSignIn,
    required TResult Function() signOut,
  }) {
    return signUp(email, password, name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? signIn,
    TResult? Function(String email, String password, String name)? signUp,
    TResult? Function()? googleSignIn,
    TResult? Function()? signOut,
  }) {
    return signUp?.call(email, password, name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? signIn,
    TResult Function(String email, String password, String name)? signUp,
    TResult Function()? googleSignIn,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(email, password, name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthSignInEvent value) signIn,
    required TResult Function(AuthSignUpEvent value) signUp,
    required TResult Function(AuthGoogleSignInEvent value) googleSignIn,
    required TResult Function(AuthSignOutEvent value) signOut,
  }) {
    return signUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthSignInEvent value)? signIn,
    TResult? Function(AuthSignUpEvent value)? signUp,
    TResult? Function(AuthGoogleSignInEvent value)? googleSignIn,
    TResult? Function(AuthSignOutEvent value)? signOut,
  }) {
    return signUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthSignInEvent value)? signIn,
    TResult Function(AuthSignUpEvent value)? signUp,
    TResult Function(AuthGoogleSignInEvent value)? googleSignIn,
    TResult Function(AuthSignOutEvent value)? signOut,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(this);
    }
    return orElse();
  }
}

abstract class AuthSignUpEvent implements AuthEvent {
  const factory AuthSignUpEvent(
          final String email, final String password, final String name) =
      _$AuthSignUpEvent;

  String get email;
  String get password;
  String get name;
  @JsonKey(ignore: true)
  _$$AuthSignUpEventCopyWith<_$AuthSignUpEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthGoogleSignInEventCopyWith<$Res> {
  factory _$$AuthGoogleSignInEventCopyWith(_$AuthGoogleSignInEvent value,
          $Res Function(_$AuthGoogleSignInEvent) then) =
      __$$AuthGoogleSignInEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthGoogleSignInEventCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthGoogleSignInEvent>
    implements _$$AuthGoogleSignInEventCopyWith<$Res> {
  __$$AuthGoogleSignInEventCopyWithImpl(_$AuthGoogleSignInEvent _value,
      $Res Function(_$AuthGoogleSignInEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthGoogleSignInEvent implements AuthGoogleSignInEvent {
  const _$AuthGoogleSignInEvent();

  @override
  String toString() {
    return 'AuthEvent.googleSignIn()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthGoogleSignInEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) signIn,
    required TResult Function(String email, String password, String name)
        signUp,
    required TResult Function() googleSignIn,
    required TResult Function() signOut,
  }) {
    return googleSignIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? signIn,
    TResult? Function(String email, String password, String name)? signUp,
    TResult? Function()? googleSignIn,
    TResult? Function()? signOut,
  }) {
    return googleSignIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? signIn,
    TResult Function(String email, String password, String name)? signUp,
    TResult Function()? googleSignIn,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (googleSignIn != null) {
      return googleSignIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthSignInEvent value) signIn,
    required TResult Function(AuthSignUpEvent value) signUp,
    required TResult Function(AuthGoogleSignInEvent value) googleSignIn,
    required TResult Function(AuthSignOutEvent value) signOut,
  }) {
    return googleSignIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthSignInEvent value)? signIn,
    TResult? Function(AuthSignUpEvent value)? signUp,
    TResult? Function(AuthGoogleSignInEvent value)? googleSignIn,
    TResult? Function(AuthSignOutEvent value)? signOut,
  }) {
    return googleSignIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthSignInEvent value)? signIn,
    TResult Function(AuthSignUpEvent value)? signUp,
    TResult Function(AuthGoogleSignInEvent value)? googleSignIn,
    TResult Function(AuthSignOutEvent value)? signOut,
    required TResult orElse(),
  }) {
    if (googleSignIn != null) {
      return googleSignIn(this);
    }
    return orElse();
  }
}

abstract class AuthGoogleSignInEvent implements AuthEvent {
  const factory AuthGoogleSignInEvent() = _$AuthGoogleSignInEvent;
}

/// @nodoc
abstract class _$$AuthSignOutEventCopyWith<$Res> {
  factory _$$AuthSignOutEventCopyWith(
          _$AuthSignOutEvent value, $Res Function(_$AuthSignOutEvent) then) =
      __$$AuthSignOutEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthSignOutEventCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthSignOutEvent>
    implements _$$AuthSignOutEventCopyWith<$Res> {
  __$$AuthSignOutEventCopyWithImpl(
      _$AuthSignOutEvent _value, $Res Function(_$AuthSignOutEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthSignOutEvent implements AuthSignOutEvent {
  const _$AuthSignOutEvent();

  @override
  String toString() {
    return 'AuthEvent.signOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthSignOutEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) signIn,
    required TResult Function(String email, String password, String name)
        signUp,
    required TResult Function() googleSignIn,
    required TResult Function() signOut,
  }) {
    return signOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? signIn,
    TResult? Function(String email, String password, String name)? signUp,
    TResult? Function()? googleSignIn,
    TResult? Function()? signOut,
  }) {
    return signOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? signIn,
    TResult Function(String email, String password, String name)? signUp,
    TResult Function()? googleSignIn,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthSignInEvent value) signIn,
    required TResult Function(AuthSignUpEvent value) signUp,
    required TResult Function(AuthGoogleSignInEvent value) googleSignIn,
    required TResult Function(AuthSignOutEvent value) signOut,
  }) {
    return signOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthSignInEvent value)? signIn,
    TResult? Function(AuthSignUpEvent value)? signUp,
    TResult? Function(AuthGoogleSignInEvent value)? googleSignIn,
    TResult? Function(AuthSignOutEvent value)? signOut,
  }) {
    return signOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthSignInEvent value)? signIn,
    TResult Function(AuthSignUpEvent value)? signUp,
    TResult Function(AuthGoogleSignInEvent value)? googleSignIn,
    TResult Function(AuthSignOutEvent value)? signOut,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut(this);
    }
    return orElse();
  }
}

abstract class AuthSignOutEvent implements AuthEvent {
  const factory AuthSignOutEvent() = _$AuthSignOutEvent;
}

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() authenticated,
    required TResult Function() unAuthenticated,
    required TResult Function(dynamic error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? authenticated,
    TResult? Function()? unAuthenticated,
    TResult? Function(dynamic error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? authenticated,
    TResult Function()? unAuthenticated,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthLoadingState value) loading,
    required TResult Function(AuthAuthenticatedState value) authenticated,
    required TResult Function(AuthUnAuthenticatedState value) unAuthenticated,
    required TResult Function(AuthErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthLoadingState value)? loading,
    TResult? Function(AuthAuthenticatedState value)? authenticated,
    TResult? Function(AuthUnAuthenticatedState value)? unAuthenticated,
    TResult? Function(AuthErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthLoadingState value)? loading,
    TResult Function(AuthAuthenticatedState value)? authenticated,
    TResult Function(AuthUnAuthenticatedState value)? unAuthenticated,
    TResult Function(AuthErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AuthLoadingStateCopyWith<$Res> {
  factory _$$AuthLoadingStateCopyWith(
          _$AuthLoadingState value, $Res Function(_$AuthLoadingState) then) =
      __$$AuthLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthLoadingStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthLoadingState>
    implements _$$AuthLoadingStateCopyWith<$Res> {
  __$$AuthLoadingStateCopyWithImpl(
      _$AuthLoadingState _value, $Res Function(_$AuthLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthLoadingState implements AuthLoadingState {
  const _$AuthLoadingState();

  @override
  String toString() {
    return 'AuthState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() authenticated,
    required TResult Function() unAuthenticated,
    required TResult Function(dynamic error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? authenticated,
    TResult? Function()? unAuthenticated,
    TResult? Function(dynamic error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? authenticated,
    TResult Function()? unAuthenticated,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthLoadingState value) loading,
    required TResult Function(AuthAuthenticatedState value) authenticated,
    required TResult Function(AuthUnAuthenticatedState value) unAuthenticated,
    required TResult Function(AuthErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthLoadingState value)? loading,
    TResult? Function(AuthAuthenticatedState value)? authenticated,
    TResult? Function(AuthUnAuthenticatedState value)? unAuthenticated,
    TResult? Function(AuthErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthLoadingState value)? loading,
    TResult Function(AuthAuthenticatedState value)? authenticated,
    TResult Function(AuthUnAuthenticatedState value)? unAuthenticated,
    TResult Function(AuthErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AuthLoadingState implements AuthState {
  const factory AuthLoadingState() = _$AuthLoadingState;
}

/// @nodoc
abstract class _$$AuthAuthenticatedStateCopyWith<$Res> {
  factory _$$AuthAuthenticatedStateCopyWith(_$AuthAuthenticatedState value,
          $Res Function(_$AuthAuthenticatedState) then) =
      __$$AuthAuthenticatedStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthAuthenticatedStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthAuthenticatedState>
    implements _$$AuthAuthenticatedStateCopyWith<$Res> {
  __$$AuthAuthenticatedStateCopyWithImpl(_$AuthAuthenticatedState _value,
      $Res Function(_$AuthAuthenticatedState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthAuthenticatedState implements AuthAuthenticatedState {
  const _$AuthAuthenticatedState();

  @override
  String toString() {
    return 'AuthState.authenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthAuthenticatedState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() authenticated,
    required TResult Function() unAuthenticated,
    required TResult Function(dynamic error) error,
  }) {
    return authenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? authenticated,
    TResult? Function()? unAuthenticated,
    TResult? Function(dynamic error)? error,
  }) {
    return authenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? authenticated,
    TResult Function()? unAuthenticated,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthLoadingState value) loading,
    required TResult Function(AuthAuthenticatedState value) authenticated,
    required TResult Function(AuthUnAuthenticatedState value) unAuthenticated,
    required TResult Function(AuthErrorState value) error,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthLoadingState value)? loading,
    TResult? Function(AuthAuthenticatedState value)? authenticated,
    TResult? Function(AuthUnAuthenticatedState value)? unAuthenticated,
    TResult? Function(AuthErrorState value)? error,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthLoadingState value)? loading,
    TResult Function(AuthAuthenticatedState value)? authenticated,
    TResult Function(AuthUnAuthenticatedState value)? unAuthenticated,
    TResult Function(AuthErrorState value)? error,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class AuthAuthenticatedState implements AuthState {
  const factory AuthAuthenticatedState() = _$AuthAuthenticatedState;
}

/// @nodoc
abstract class _$$AuthUnAuthenticatedStateCopyWith<$Res> {
  factory _$$AuthUnAuthenticatedStateCopyWith(_$AuthUnAuthenticatedState value,
          $Res Function(_$AuthUnAuthenticatedState) then) =
      __$$AuthUnAuthenticatedStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthUnAuthenticatedStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthUnAuthenticatedState>
    implements _$$AuthUnAuthenticatedStateCopyWith<$Res> {
  __$$AuthUnAuthenticatedStateCopyWithImpl(_$AuthUnAuthenticatedState _value,
      $Res Function(_$AuthUnAuthenticatedState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthUnAuthenticatedState implements AuthUnAuthenticatedState {
  const _$AuthUnAuthenticatedState();

  @override
  String toString() {
    return 'AuthState.unAuthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthUnAuthenticatedState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() authenticated,
    required TResult Function() unAuthenticated,
    required TResult Function(dynamic error) error,
  }) {
    return unAuthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? authenticated,
    TResult? Function()? unAuthenticated,
    TResult? Function(dynamic error)? error,
  }) {
    return unAuthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? authenticated,
    TResult Function()? unAuthenticated,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) {
    if (unAuthenticated != null) {
      return unAuthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthLoadingState value) loading,
    required TResult Function(AuthAuthenticatedState value) authenticated,
    required TResult Function(AuthUnAuthenticatedState value) unAuthenticated,
    required TResult Function(AuthErrorState value) error,
  }) {
    return unAuthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthLoadingState value)? loading,
    TResult? Function(AuthAuthenticatedState value)? authenticated,
    TResult? Function(AuthUnAuthenticatedState value)? unAuthenticated,
    TResult? Function(AuthErrorState value)? error,
  }) {
    return unAuthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthLoadingState value)? loading,
    TResult Function(AuthAuthenticatedState value)? authenticated,
    TResult Function(AuthUnAuthenticatedState value)? unAuthenticated,
    TResult Function(AuthErrorState value)? error,
    required TResult orElse(),
  }) {
    if (unAuthenticated != null) {
      return unAuthenticated(this);
    }
    return orElse();
  }
}

abstract class AuthUnAuthenticatedState implements AuthState {
  const factory AuthUnAuthenticatedState() = _$AuthUnAuthenticatedState;
}

/// @nodoc
abstract class _$$AuthErrorStateCopyWith<$Res> {
  factory _$$AuthErrorStateCopyWith(
          _$AuthErrorState value, $Res Function(_$AuthErrorState) then) =
      __$$AuthErrorStateCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic error});
}

/// @nodoc
class __$$AuthErrorStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthErrorState>
    implements _$$AuthErrorStateCopyWith<$Res> {
  __$$AuthErrorStateCopyWithImpl(
      _$AuthErrorState _value, $Res Function(_$AuthErrorState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$AuthErrorState(
      freezed == error ? _value.error! : error,
    ));
  }
}

/// @nodoc

class _$AuthErrorState implements AuthErrorState {
  const _$AuthErrorState(this.error);

  @override
  final dynamic error;

  @override
  String toString() {
    return 'AuthState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthErrorState &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthErrorStateCopyWith<_$AuthErrorState> get copyWith =>
      __$$AuthErrorStateCopyWithImpl<_$AuthErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() authenticated,
    required TResult Function() unAuthenticated,
    required TResult Function(dynamic error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? authenticated,
    TResult? Function()? unAuthenticated,
    TResult? Function(dynamic error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? authenticated,
    TResult Function()? unAuthenticated,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthLoadingState value) loading,
    required TResult Function(AuthAuthenticatedState value) authenticated,
    required TResult Function(AuthUnAuthenticatedState value) unAuthenticated,
    required TResult Function(AuthErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthLoadingState value)? loading,
    TResult? Function(AuthAuthenticatedState value)? authenticated,
    TResult? Function(AuthUnAuthenticatedState value)? unAuthenticated,
    TResult? Function(AuthErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthLoadingState value)? loading,
    TResult Function(AuthAuthenticatedState value)? authenticated,
    TResult Function(AuthUnAuthenticatedState value)? unAuthenticated,
    TResult Function(AuthErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class AuthErrorState implements AuthState {
  const factory AuthErrorState(final dynamic error) = _$AuthErrorState;

  dynamic get error;
  @JsonKey(ignore: true)
  _$$AuthErrorStateCopyWith<_$AuthErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}
