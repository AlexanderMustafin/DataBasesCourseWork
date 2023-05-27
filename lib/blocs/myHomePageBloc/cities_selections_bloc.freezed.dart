// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cities_selections_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CitiesSelectionsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic city) init,
    required TResult Function(dynamic value) change,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic city)? init,
    TResult? Function(dynamic value)? change,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic city)? init,
    TResult Function(dynamic value)? change,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitStateCitiesEvent value) init,
    required TResult Function(CityChangeEvent value) change,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitStateCitiesEvent value)? init,
    TResult? Function(CityChangeEvent value)? change,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitStateCitiesEvent value)? init,
    TResult Function(CityChangeEvent value)? change,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CitiesSelectionsEventCopyWith<$Res> {
  factory $CitiesSelectionsEventCopyWith(CitiesSelectionsEvent value,
          $Res Function(CitiesSelectionsEvent) then) =
      _$CitiesSelectionsEventCopyWithImpl<$Res, CitiesSelectionsEvent>;
}

/// @nodoc
class _$CitiesSelectionsEventCopyWithImpl<$Res,
        $Val extends CitiesSelectionsEvent>
    implements $CitiesSelectionsEventCopyWith<$Res> {
  _$CitiesSelectionsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitStateCitiesEventCopyWith<$Res> {
  factory _$$InitStateCitiesEventCopyWith(_$InitStateCitiesEvent value,
          $Res Function(_$InitStateCitiesEvent) then) =
      __$$InitStateCitiesEventCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic city});
}

/// @nodoc
class __$$InitStateCitiesEventCopyWithImpl<$Res>
    extends _$CitiesSelectionsEventCopyWithImpl<$Res, _$InitStateCitiesEvent>
    implements _$$InitStateCitiesEventCopyWith<$Res> {
  __$$InitStateCitiesEventCopyWithImpl(_$InitStateCitiesEvent _value,
      $Res Function(_$InitStateCitiesEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? city = freezed,
  }) {
    return _then(_$InitStateCitiesEvent(
      freezed == city ? _value.city! : city,
    ));
  }
}

/// @nodoc

class _$InitStateCitiesEvent implements InitStateCitiesEvent {
  const _$InitStateCitiesEvent(this.city);

  @override
  final dynamic city;

  @override
  String toString() {
    return 'CitiesSelectionsEvent.init(city: $city)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitStateCitiesEvent &&
            const DeepCollectionEquality().equals(other.city, city));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(city));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitStateCitiesEventCopyWith<_$InitStateCitiesEvent> get copyWith =>
      __$$InitStateCitiesEventCopyWithImpl<_$InitStateCitiesEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic city) init,
    required TResult Function(dynamic value) change,
  }) {
    return init(city);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic city)? init,
    TResult? Function(dynamic value)? change,
  }) {
    return init?.call(city);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic city)? init,
    TResult Function(dynamic value)? change,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(city);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitStateCitiesEvent value) init,
    required TResult Function(CityChangeEvent value) change,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitStateCitiesEvent value)? init,
    TResult? Function(CityChangeEvent value)? change,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitStateCitiesEvent value)? init,
    TResult Function(CityChangeEvent value)? change,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class InitStateCitiesEvent implements CitiesSelectionsEvent {
  const factory InitStateCitiesEvent(final dynamic city) =
      _$InitStateCitiesEvent;

  dynamic get city;
  @JsonKey(ignore: true)
  _$$InitStateCitiesEventCopyWith<_$InitStateCitiesEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CityChangeEventCopyWith<$Res> {
  factory _$$CityChangeEventCopyWith(
          _$CityChangeEvent value, $Res Function(_$CityChangeEvent) then) =
      __$$CityChangeEventCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic value});
}

/// @nodoc
class __$$CityChangeEventCopyWithImpl<$Res>
    extends _$CitiesSelectionsEventCopyWithImpl<$Res, _$CityChangeEvent>
    implements _$$CityChangeEventCopyWith<$Res> {
  __$$CityChangeEventCopyWithImpl(
      _$CityChangeEvent _value, $Res Function(_$CityChangeEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$CityChangeEvent(
      freezed == value ? _value.value! : value,
    ));
  }
}

/// @nodoc

class _$CityChangeEvent implements CityChangeEvent {
  const _$CityChangeEvent(this.value);

  @override
  final dynamic value;

  @override
  String toString() {
    return 'CitiesSelectionsEvent.change(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CityChangeEvent &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CityChangeEventCopyWith<_$CityChangeEvent> get copyWith =>
      __$$CityChangeEventCopyWithImpl<_$CityChangeEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic city) init,
    required TResult Function(dynamic value) change,
  }) {
    return change(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic city)? init,
    TResult? Function(dynamic value)? change,
  }) {
    return change?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic city)? init,
    TResult Function(dynamic value)? change,
    required TResult orElse(),
  }) {
    if (change != null) {
      return change(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitStateCitiesEvent value) init,
    required TResult Function(CityChangeEvent value) change,
  }) {
    return change(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitStateCitiesEvent value)? init,
    TResult? Function(CityChangeEvent value)? change,
  }) {
    return change?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitStateCitiesEvent value)? init,
    TResult Function(CityChangeEvent value)? change,
    required TResult orElse(),
  }) {
    if (change != null) {
      return change(this);
    }
    return orElse();
  }
}

abstract class CityChangeEvent implements CitiesSelectionsEvent {
  const factory CityChangeEvent(final dynamic value) = _$CityChangeEvent;

  dynamic get value;
  @JsonKey(ignore: true)
  _$$CityChangeEventCopyWith<_$CityChangeEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CitiesSelectionsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Town> list) change,
    required TResult Function(List<dynamic> listOfCities) initial,
    required TResult Function() error,
    required TResult Function() wait,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Town> list)? change,
    TResult? Function(List<dynamic> listOfCities)? initial,
    TResult? Function()? error,
    TResult? Function()? wait,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Town> list)? change,
    TResult Function(List<dynamic> listOfCities)? initial,
    TResult Function()? error,
    TResult Function()? wait,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CityChangeState value) change,
    required TResult Function(CityInitialState value) initial,
    required TResult Function(CityErrorState value) error,
    required TResult Function(CityWaitState value) wait,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CityChangeState value)? change,
    TResult? Function(CityInitialState value)? initial,
    TResult? Function(CityErrorState value)? error,
    TResult? Function(CityWaitState value)? wait,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CityChangeState value)? change,
    TResult Function(CityInitialState value)? initial,
    TResult Function(CityErrorState value)? error,
    TResult Function(CityWaitState value)? wait,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CitiesSelectionsStateCopyWith<$Res> {
  factory $CitiesSelectionsStateCopyWith(CitiesSelectionsState value,
          $Res Function(CitiesSelectionsState) then) =
      _$CitiesSelectionsStateCopyWithImpl<$Res, CitiesSelectionsState>;
}

/// @nodoc
class _$CitiesSelectionsStateCopyWithImpl<$Res,
        $Val extends CitiesSelectionsState>
    implements $CitiesSelectionsStateCopyWith<$Res> {
  _$CitiesSelectionsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CityChangeStateCopyWith<$Res> {
  factory _$$CityChangeStateCopyWith(
          _$CityChangeState value, $Res Function(_$CityChangeState) then) =
      __$$CityChangeStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Town> list});
}

/// @nodoc
class __$$CityChangeStateCopyWithImpl<$Res>
    extends _$CitiesSelectionsStateCopyWithImpl<$Res, _$CityChangeState>
    implements _$$CityChangeStateCopyWith<$Res> {
  __$$CityChangeStateCopyWithImpl(
      _$CityChangeState _value, $Res Function(_$CityChangeState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
  }) {
    return _then(_$CityChangeState(
      null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<Town>,
    ));
  }
}

/// @nodoc

class _$CityChangeState implements CityChangeState {
  const _$CityChangeState(final List<Town> list) : _list = list;

  final List<Town> _list;
  @override
  List<Town> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  String toString() {
    return 'CitiesSelectionsState.change(list: $list)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CityChangeState &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_list));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CityChangeStateCopyWith<_$CityChangeState> get copyWith =>
      __$$CityChangeStateCopyWithImpl<_$CityChangeState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Town> list) change,
    required TResult Function(List<dynamic> listOfCities) initial,
    required TResult Function() error,
    required TResult Function() wait,
  }) {
    return change(list);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Town> list)? change,
    TResult? Function(List<dynamic> listOfCities)? initial,
    TResult? Function()? error,
    TResult? Function()? wait,
  }) {
    return change?.call(list);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Town> list)? change,
    TResult Function(List<dynamic> listOfCities)? initial,
    TResult Function()? error,
    TResult Function()? wait,
    required TResult orElse(),
  }) {
    if (change != null) {
      return change(list);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CityChangeState value) change,
    required TResult Function(CityInitialState value) initial,
    required TResult Function(CityErrorState value) error,
    required TResult Function(CityWaitState value) wait,
  }) {
    return change(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CityChangeState value)? change,
    TResult? Function(CityInitialState value)? initial,
    TResult? Function(CityErrorState value)? error,
    TResult? Function(CityWaitState value)? wait,
  }) {
    return change?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CityChangeState value)? change,
    TResult Function(CityInitialState value)? initial,
    TResult Function(CityErrorState value)? error,
    TResult Function(CityWaitState value)? wait,
    required TResult orElse(),
  }) {
    if (change != null) {
      return change(this);
    }
    return orElse();
  }
}

abstract class CityChangeState implements CitiesSelectionsState {
  const factory CityChangeState(final List<Town> list) = _$CityChangeState;

  List<Town> get list;
  @JsonKey(ignore: true)
  _$$CityChangeStateCopyWith<_$CityChangeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CityInitialStateCopyWith<$Res> {
  factory _$$CityInitialStateCopyWith(
          _$CityInitialState value, $Res Function(_$CityInitialState) then) =
      __$$CityInitialStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<dynamic> listOfCities});
}

/// @nodoc
class __$$CityInitialStateCopyWithImpl<$Res>
    extends _$CitiesSelectionsStateCopyWithImpl<$Res, _$CityInitialState>
    implements _$$CityInitialStateCopyWith<$Res> {
  __$$CityInitialStateCopyWithImpl(
      _$CityInitialState _value, $Res Function(_$CityInitialState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listOfCities = null,
  }) {
    return _then(_$CityInitialState(
      null == listOfCities
          ? _value._listOfCities
          : listOfCities // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc

class _$CityInitialState implements CityInitialState {
  const _$CityInitialState(final List<dynamic> listOfCities)
      : _listOfCities = listOfCities;

  final List<dynamic> _listOfCities;
  @override
  List<dynamic> get listOfCities {
    if (_listOfCities is EqualUnmodifiableListView) return _listOfCities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listOfCities);
  }

  @override
  String toString() {
    return 'CitiesSelectionsState.initial(listOfCities: $listOfCities)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CityInitialState &&
            const DeepCollectionEquality()
                .equals(other._listOfCities, _listOfCities));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_listOfCities));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CityInitialStateCopyWith<_$CityInitialState> get copyWith =>
      __$$CityInitialStateCopyWithImpl<_$CityInitialState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Town> list) change,
    required TResult Function(List<dynamic> listOfCities) initial,
    required TResult Function() error,
    required TResult Function() wait,
  }) {
    return initial(listOfCities);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Town> list)? change,
    TResult? Function(List<dynamic> listOfCities)? initial,
    TResult? Function()? error,
    TResult? Function()? wait,
  }) {
    return initial?.call(listOfCities);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Town> list)? change,
    TResult Function(List<dynamic> listOfCities)? initial,
    TResult Function()? error,
    TResult Function()? wait,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(listOfCities);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CityChangeState value) change,
    required TResult Function(CityInitialState value) initial,
    required TResult Function(CityErrorState value) error,
    required TResult Function(CityWaitState value) wait,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CityChangeState value)? change,
    TResult? Function(CityInitialState value)? initial,
    TResult? Function(CityErrorState value)? error,
    TResult? Function(CityWaitState value)? wait,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CityChangeState value)? change,
    TResult Function(CityInitialState value)? initial,
    TResult Function(CityErrorState value)? error,
    TResult Function(CityWaitState value)? wait,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CityInitialState implements CitiesSelectionsState {
  const factory CityInitialState(final List<dynamic> listOfCities) =
      _$CityInitialState;

  List<dynamic> get listOfCities;
  @JsonKey(ignore: true)
  _$$CityInitialStateCopyWith<_$CityInitialState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CityErrorStateCopyWith<$Res> {
  factory _$$CityErrorStateCopyWith(
          _$CityErrorState value, $Res Function(_$CityErrorState) then) =
      __$$CityErrorStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CityErrorStateCopyWithImpl<$Res>
    extends _$CitiesSelectionsStateCopyWithImpl<$Res, _$CityErrorState>
    implements _$$CityErrorStateCopyWith<$Res> {
  __$$CityErrorStateCopyWithImpl(
      _$CityErrorState _value, $Res Function(_$CityErrorState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CityErrorState implements CityErrorState {
  const _$CityErrorState();

  @override
  String toString() {
    return 'CitiesSelectionsState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CityErrorState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Town> list) change,
    required TResult Function(List<dynamic> listOfCities) initial,
    required TResult Function() error,
    required TResult Function() wait,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Town> list)? change,
    TResult? Function(List<dynamic> listOfCities)? initial,
    TResult? Function()? error,
    TResult? Function()? wait,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Town> list)? change,
    TResult Function(List<dynamic> listOfCities)? initial,
    TResult Function()? error,
    TResult Function()? wait,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CityChangeState value) change,
    required TResult Function(CityInitialState value) initial,
    required TResult Function(CityErrorState value) error,
    required TResult Function(CityWaitState value) wait,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CityChangeState value)? change,
    TResult? Function(CityInitialState value)? initial,
    TResult? Function(CityErrorState value)? error,
    TResult? Function(CityWaitState value)? wait,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CityChangeState value)? change,
    TResult Function(CityInitialState value)? initial,
    TResult Function(CityErrorState value)? error,
    TResult Function(CityWaitState value)? wait,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CityErrorState implements CitiesSelectionsState {
  const factory CityErrorState() = _$CityErrorState;
}

/// @nodoc
abstract class _$$CityWaitStateCopyWith<$Res> {
  factory _$$CityWaitStateCopyWith(
          _$CityWaitState value, $Res Function(_$CityWaitState) then) =
      __$$CityWaitStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CityWaitStateCopyWithImpl<$Res>
    extends _$CitiesSelectionsStateCopyWithImpl<$Res, _$CityWaitState>
    implements _$$CityWaitStateCopyWith<$Res> {
  __$$CityWaitStateCopyWithImpl(
      _$CityWaitState _value, $Res Function(_$CityWaitState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CityWaitState implements CityWaitState {
  const _$CityWaitState();

  @override
  String toString() {
    return 'CitiesSelectionsState.wait()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CityWaitState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Town> list) change,
    required TResult Function(List<dynamic> listOfCities) initial,
    required TResult Function() error,
    required TResult Function() wait,
  }) {
    return wait();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Town> list)? change,
    TResult? Function(List<dynamic> listOfCities)? initial,
    TResult? Function()? error,
    TResult? Function()? wait,
  }) {
    return wait?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Town> list)? change,
    TResult Function(List<dynamic> listOfCities)? initial,
    TResult Function()? error,
    TResult Function()? wait,
    required TResult orElse(),
  }) {
    if (wait != null) {
      return wait();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CityChangeState value) change,
    required TResult Function(CityInitialState value) initial,
    required TResult Function(CityErrorState value) error,
    required TResult Function(CityWaitState value) wait,
  }) {
    return wait(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CityChangeState value)? change,
    TResult? Function(CityInitialState value)? initial,
    TResult? Function(CityErrorState value)? error,
    TResult? Function(CityWaitState value)? wait,
  }) {
    return wait?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CityChangeState value)? change,
    TResult Function(CityInitialState value)? initial,
    TResult Function(CityErrorState value)? error,
    TResult Function(CityWaitState value)? wait,
    required TResult orElse(),
  }) {
    if (wait != null) {
      return wait(this);
    }
    return orElse();
  }
}

abstract class CityWaitState implements CitiesSelectionsState {
  const factory CityWaitState() = _$CityWaitState;
}
