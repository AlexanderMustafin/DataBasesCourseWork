// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'abb_bar_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppBarEvent {
  dynamic get context => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic context, dynamic provider) changeTheme,
    required TResult Function(dynamic currencyValue, dynamic context)
        changeValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic context, dynamic provider)? changeTheme,
    TResult? Function(dynamic currencyValue, dynamic context)? changeValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic context, dynamic provider)? changeTheme,
    TResult Function(dynamic currencyValue, dynamic context)? changeValue,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppBarChangeThemeEvent value) changeTheme,
    required TResult Function(AppBarChangeValueEvent value) changeValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppBarChangeThemeEvent value)? changeTheme,
    TResult? Function(AppBarChangeValueEvent value)? changeValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppBarChangeThemeEvent value)? changeTheme,
    TResult Function(AppBarChangeValueEvent value)? changeValue,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppBarEventCopyWith<AppBarEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppBarEventCopyWith<$Res> {
  factory $AppBarEventCopyWith(
          AppBarEvent value, $Res Function(AppBarEvent) then) =
      _$AppBarEventCopyWithImpl<$Res, AppBarEvent>;
  @useResult
  $Res call({dynamic context});
}

/// @nodoc
class _$AppBarEventCopyWithImpl<$Res, $Val extends AppBarEvent>
    implements $AppBarEventCopyWith<$Res> {
  _$AppBarEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = freezed,
  }) {
    return _then(_value.copyWith(
      context: freezed == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppBarChangeThemeEventCopyWith<$Res>
    implements $AppBarEventCopyWith<$Res> {
  factory _$$AppBarChangeThemeEventCopyWith(_$AppBarChangeThemeEvent value,
          $Res Function(_$AppBarChangeThemeEvent) then) =
      __$$AppBarChangeThemeEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic context, dynamic provider});
}

/// @nodoc
class __$$AppBarChangeThemeEventCopyWithImpl<$Res>
    extends _$AppBarEventCopyWithImpl<$Res, _$AppBarChangeThemeEvent>
    implements _$$AppBarChangeThemeEventCopyWith<$Res> {
  __$$AppBarChangeThemeEventCopyWithImpl(_$AppBarChangeThemeEvent _value,
      $Res Function(_$AppBarChangeThemeEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = freezed,
    Object? provider = freezed,
  }) {
    return _then(_$AppBarChangeThemeEvent(
      freezed == context ? _value.context! : context,
      freezed == provider ? _value.provider! : provider,
    ));
  }
}

/// @nodoc

class _$AppBarChangeThemeEvent implements AppBarChangeThemeEvent {
  const _$AppBarChangeThemeEvent(this.context, this.provider);

  @override
  final dynamic context;
  @override
  final dynamic provider;

  @override
  String toString() {
    return 'AppBarEvent.changeTheme(context: $context, provider: $provider)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppBarChangeThemeEvent &&
            const DeepCollectionEquality().equals(other.context, context) &&
            const DeepCollectionEquality().equals(other.provider, provider));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(context),
      const DeepCollectionEquality().hash(provider));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppBarChangeThemeEventCopyWith<_$AppBarChangeThemeEvent> get copyWith =>
      __$$AppBarChangeThemeEventCopyWithImpl<_$AppBarChangeThemeEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic context, dynamic provider) changeTheme,
    required TResult Function(dynamic currencyValue, dynamic context)
        changeValue,
  }) {
    return changeTheme(context, provider);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic context, dynamic provider)? changeTheme,
    TResult? Function(dynamic currencyValue, dynamic context)? changeValue,
  }) {
    return changeTheme?.call(context, provider);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic context, dynamic provider)? changeTheme,
    TResult Function(dynamic currencyValue, dynamic context)? changeValue,
    required TResult orElse(),
  }) {
    if (changeTheme != null) {
      return changeTheme(context, provider);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppBarChangeThemeEvent value) changeTheme,
    required TResult Function(AppBarChangeValueEvent value) changeValue,
  }) {
    return changeTheme(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppBarChangeThemeEvent value)? changeTheme,
    TResult? Function(AppBarChangeValueEvent value)? changeValue,
  }) {
    return changeTheme?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppBarChangeThemeEvent value)? changeTheme,
    TResult Function(AppBarChangeValueEvent value)? changeValue,
    required TResult orElse(),
  }) {
    if (changeTheme != null) {
      return changeTheme(this);
    }
    return orElse();
  }
}

abstract class AppBarChangeThemeEvent implements AppBarEvent {
  const factory AppBarChangeThemeEvent(
      final dynamic context, final dynamic provider) = _$AppBarChangeThemeEvent;

  @override
  dynamic get context;
  dynamic get provider;
  @override
  @JsonKey(ignore: true)
  _$$AppBarChangeThemeEventCopyWith<_$AppBarChangeThemeEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AppBarChangeValueEventCopyWith<$Res>
    implements $AppBarEventCopyWith<$Res> {
  factory _$$AppBarChangeValueEventCopyWith(_$AppBarChangeValueEvent value,
          $Res Function(_$AppBarChangeValueEvent) then) =
      __$$AppBarChangeValueEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic currencyValue, dynamic context});
}

/// @nodoc
class __$$AppBarChangeValueEventCopyWithImpl<$Res>
    extends _$AppBarEventCopyWithImpl<$Res, _$AppBarChangeValueEvent>
    implements _$$AppBarChangeValueEventCopyWith<$Res> {
  __$$AppBarChangeValueEventCopyWithImpl(_$AppBarChangeValueEvent _value,
      $Res Function(_$AppBarChangeValueEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currencyValue = freezed,
    Object? context = freezed,
  }) {
    return _then(_$AppBarChangeValueEvent(
      freezed == currencyValue ? _value.currencyValue! : currencyValue,
      freezed == context ? _value.context! : context,
    ));
  }
}

/// @nodoc

class _$AppBarChangeValueEvent implements AppBarChangeValueEvent {
  const _$AppBarChangeValueEvent(this.currencyValue, this.context);

  @override
  final dynamic currencyValue;
  @override
  final dynamic context;

  @override
  String toString() {
    return 'AppBarEvent.changeValue(currencyValue: $currencyValue, context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppBarChangeValueEvent &&
            const DeepCollectionEquality()
                .equals(other.currencyValue, currencyValue) &&
            const DeepCollectionEquality().equals(other.context, context));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(currencyValue),
      const DeepCollectionEquality().hash(context));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppBarChangeValueEventCopyWith<_$AppBarChangeValueEvent> get copyWith =>
      __$$AppBarChangeValueEventCopyWithImpl<_$AppBarChangeValueEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic context, dynamic provider) changeTheme,
    required TResult Function(dynamic currencyValue, dynamic context)
        changeValue,
  }) {
    return changeValue(currencyValue, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic context, dynamic provider)? changeTheme,
    TResult? Function(dynamic currencyValue, dynamic context)? changeValue,
  }) {
    return changeValue?.call(currencyValue, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic context, dynamic provider)? changeTheme,
    TResult Function(dynamic currencyValue, dynamic context)? changeValue,
    required TResult orElse(),
  }) {
    if (changeValue != null) {
      return changeValue(currencyValue, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppBarChangeThemeEvent value) changeTheme,
    required TResult Function(AppBarChangeValueEvent value) changeValue,
  }) {
    return changeValue(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppBarChangeThemeEvent value)? changeTheme,
    TResult? Function(AppBarChangeValueEvent value)? changeValue,
  }) {
    return changeValue?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppBarChangeThemeEvent value)? changeTheme,
    TResult Function(AppBarChangeValueEvent value)? changeValue,
    required TResult orElse(),
  }) {
    if (changeValue != null) {
      return changeValue(this);
    }
    return orElse();
  }
}

abstract class AppBarChangeValueEvent implements AppBarEvent {
  const factory AppBarChangeValueEvent(
          final dynamic currencyValue, final dynamic context) =
      _$AppBarChangeValueEvent;

  dynamic get currencyValue;
  @override
  dynamic get context;
  @override
  @JsonKey(ignore: true)
  _$$AppBarChangeValueEventCopyWith<_$AppBarChangeValueEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AppBarState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() changeTheme,
    required TResult Function(String value) changeValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? changeTheme,
    TResult? Function(String value)? changeValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? changeTheme,
    TResult Function(String value)? changeValue,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppBarInitialState value) initial,
    required TResult Function(AppBarChangeThemeState value) changeTheme,
    required TResult Function(AppBarChangeValueState value) changeValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppBarInitialState value)? initial,
    TResult? Function(AppBarChangeThemeState value)? changeTheme,
    TResult? Function(AppBarChangeValueState value)? changeValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppBarInitialState value)? initial,
    TResult Function(AppBarChangeThemeState value)? changeTheme,
    TResult Function(AppBarChangeValueState value)? changeValue,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppBarStateCopyWith<$Res> {
  factory $AppBarStateCopyWith(
          AppBarState value, $Res Function(AppBarState) then) =
      _$AppBarStateCopyWithImpl<$Res, AppBarState>;
}

/// @nodoc
class _$AppBarStateCopyWithImpl<$Res, $Val extends AppBarState>
    implements $AppBarStateCopyWith<$Res> {
  _$AppBarStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AppBarInitialStateCopyWith<$Res> {
  factory _$$AppBarInitialStateCopyWith(_$AppBarInitialState value,
          $Res Function(_$AppBarInitialState) then) =
      __$$AppBarInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AppBarInitialStateCopyWithImpl<$Res>
    extends _$AppBarStateCopyWithImpl<$Res, _$AppBarInitialState>
    implements _$$AppBarInitialStateCopyWith<$Res> {
  __$$AppBarInitialStateCopyWithImpl(
      _$AppBarInitialState _value, $Res Function(_$AppBarInitialState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AppBarInitialState implements AppBarInitialState {
  const _$AppBarInitialState();

  @override
  String toString() {
    return 'AppBarState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AppBarInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() changeTheme,
    required TResult Function(String value) changeValue,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? changeTheme,
    TResult? Function(String value)? changeValue,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? changeTheme,
    TResult Function(String value)? changeValue,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppBarInitialState value) initial,
    required TResult Function(AppBarChangeThemeState value) changeTheme,
    required TResult Function(AppBarChangeValueState value) changeValue,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppBarInitialState value)? initial,
    TResult? Function(AppBarChangeThemeState value)? changeTheme,
    TResult? Function(AppBarChangeValueState value)? changeValue,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppBarInitialState value)? initial,
    TResult Function(AppBarChangeThemeState value)? changeTheme,
    TResult Function(AppBarChangeValueState value)? changeValue,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class AppBarInitialState implements AppBarState {
  const factory AppBarInitialState() = _$AppBarInitialState;
}

/// @nodoc
abstract class _$$AppBarChangeThemeStateCopyWith<$Res> {
  factory _$$AppBarChangeThemeStateCopyWith(_$AppBarChangeThemeState value,
          $Res Function(_$AppBarChangeThemeState) then) =
      __$$AppBarChangeThemeStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AppBarChangeThemeStateCopyWithImpl<$Res>
    extends _$AppBarStateCopyWithImpl<$Res, _$AppBarChangeThemeState>
    implements _$$AppBarChangeThemeStateCopyWith<$Res> {
  __$$AppBarChangeThemeStateCopyWithImpl(_$AppBarChangeThemeState _value,
      $Res Function(_$AppBarChangeThemeState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AppBarChangeThemeState implements AppBarChangeThemeState {
  const _$AppBarChangeThemeState();

  @override
  String toString() {
    return 'AppBarState.changeTheme()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AppBarChangeThemeState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() changeTheme,
    required TResult Function(String value) changeValue,
  }) {
    return changeTheme();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? changeTheme,
    TResult? Function(String value)? changeValue,
  }) {
    return changeTheme?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? changeTheme,
    TResult Function(String value)? changeValue,
    required TResult orElse(),
  }) {
    if (changeTheme != null) {
      return changeTheme();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppBarInitialState value) initial,
    required TResult Function(AppBarChangeThemeState value) changeTheme,
    required TResult Function(AppBarChangeValueState value) changeValue,
  }) {
    return changeTheme(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppBarInitialState value)? initial,
    TResult? Function(AppBarChangeThemeState value)? changeTheme,
    TResult? Function(AppBarChangeValueState value)? changeValue,
  }) {
    return changeTheme?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppBarInitialState value)? initial,
    TResult Function(AppBarChangeThemeState value)? changeTheme,
    TResult Function(AppBarChangeValueState value)? changeValue,
    required TResult orElse(),
  }) {
    if (changeTheme != null) {
      return changeTheme(this);
    }
    return orElse();
  }
}

abstract class AppBarChangeThemeState implements AppBarState {
  const factory AppBarChangeThemeState() = _$AppBarChangeThemeState;
}

/// @nodoc
abstract class _$$AppBarChangeValueStateCopyWith<$Res> {
  factory _$$AppBarChangeValueStateCopyWith(_$AppBarChangeValueState value,
          $Res Function(_$AppBarChangeValueState) then) =
      __$$AppBarChangeValueStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$AppBarChangeValueStateCopyWithImpl<$Res>
    extends _$AppBarStateCopyWithImpl<$Res, _$AppBarChangeValueState>
    implements _$$AppBarChangeValueStateCopyWith<$Res> {
  __$$AppBarChangeValueStateCopyWithImpl(_$AppBarChangeValueState _value,
      $Res Function(_$AppBarChangeValueState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$AppBarChangeValueState(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AppBarChangeValueState implements AppBarChangeValueState {
  const _$AppBarChangeValueState(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'AppBarState.changeValue(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppBarChangeValueState &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppBarChangeValueStateCopyWith<_$AppBarChangeValueState> get copyWith =>
      __$$AppBarChangeValueStateCopyWithImpl<_$AppBarChangeValueState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() changeTheme,
    required TResult Function(String value) changeValue,
  }) {
    return changeValue(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? changeTheme,
    TResult? Function(String value)? changeValue,
  }) {
    return changeValue?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? changeTheme,
    TResult Function(String value)? changeValue,
    required TResult orElse(),
  }) {
    if (changeValue != null) {
      return changeValue(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppBarInitialState value) initial,
    required TResult Function(AppBarChangeThemeState value) changeTheme,
    required TResult Function(AppBarChangeValueState value) changeValue,
  }) {
    return changeValue(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppBarInitialState value)? initial,
    TResult? Function(AppBarChangeThemeState value)? changeTheme,
    TResult? Function(AppBarChangeValueState value)? changeValue,
  }) {
    return changeValue?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppBarInitialState value)? initial,
    TResult Function(AppBarChangeThemeState value)? changeTheme,
    TResult Function(AppBarChangeValueState value)? changeValue,
    required TResult orElse(),
  }) {
    if (changeValue != null) {
      return changeValue(this);
    }
    return orElse();
  }
}

abstract class AppBarChangeValueState implements AppBarState {
  const factory AppBarChangeValueState(final String value) =
      _$AppBarChangeValueState;

  String get value;
  @JsonKey(ignore: true)
  _$$AppBarChangeValueStateCopyWith<_$AppBarChangeValueState> get copyWith =>
      throw _privateConstructorUsedError;
}
