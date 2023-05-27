// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'desc_bloc_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DescBlocEvent {
  String get commentText => throw _privateConstructorUsedError;
  String get rating => throw _privateConstructorUsedError;
  String get hotel => throw _privateConstructorUsedError;
  String? get userName => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String commentText, String rating, String hotel, String? userName)
        addComment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String commentText, String rating, String hotel, String? userName)?
        addComment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String commentText, String rating, String hotel, String? userName)?
        addComment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DescCommentEvent value) addComment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DescCommentEvent value)? addComment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DescCommentEvent value)? addComment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DescBlocEventCopyWith<DescBlocEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DescBlocEventCopyWith<$Res> {
  factory $DescBlocEventCopyWith(
          DescBlocEvent value, $Res Function(DescBlocEvent) then) =
      _$DescBlocEventCopyWithImpl<$Res, DescBlocEvent>;
  @useResult
  $Res call(
      {String commentText, String rating, String hotel, String? userName});
}

/// @nodoc
class _$DescBlocEventCopyWithImpl<$Res, $Val extends DescBlocEvent>
    implements $DescBlocEventCopyWith<$Res> {
  _$DescBlocEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? commentText = null,
    Object? rating = null,
    Object? hotel = null,
    Object? userName = freezed,
  }) {
    return _then(_value.copyWith(
      commentText: null == commentText
          ? _value.commentText
          : commentText // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String,
      hotel: null == hotel
          ? _value.hotel
          : hotel // ignore: cast_nullable_to_non_nullable
              as String,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DescCommentEventCopyWith<$Res>
    implements $DescBlocEventCopyWith<$Res> {
  factory _$$DescCommentEventCopyWith(
          _$DescCommentEvent value, $Res Function(_$DescCommentEvent) then) =
      __$$DescCommentEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String commentText, String rating, String hotel, String? userName});
}

/// @nodoc
class __$$DescCommentEventCopyWithImpl<$Res>
    extends _$DescBlocEventCopyWithImpl<$Res, _$DescCommentEvent>
    implements _$$DescCommentEventCopyWith<$Res> {
  __$$DescCommentEventCopyWithImpl(
      _$DescCommentEvent _value, $Res Function(_$DescCommentEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? commentText = null,
    Object? rating = null,
    Object? hotel = null,
    Object? userName = freezed,
  }) {
    return _then(_$DescCommentEvent(
      null == commentText
          ? _value.commentText
          : commentText // ignore: cast_nullable_to_non_nullable
              as String,
      null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String,
      null == hotel
          ? _value.hotel
          : hotel // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$DescCommentEvent implements DescCommentEvent {
  const _$DescCommentEvent(
      this.commentText, this.rating, this.hotel, this.userName);

  @override
  final String commentText;
  @override
  final String rating;
  @override
  final String hotel;
  @override
  final String? userName;

  @override
  String toString() {
    return 'DescBlocEvent.addComment(commentText: $commentText, rating: $rating, hotel: $hotel, userName: $userName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DescCommentEvent &&
            (identical(other.commentText, commentText) ||
                other.commentText == commentText) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.hotel, hotel) || other.hotel == hotel) &&
            (identical(other.userName, userName) ||
                other.userName == userName));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, commentText, rating, hotel, userName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DescCommentEventCopyWith<_$DescCommentEvent> get copyWith =>
      __$$DescCommentEventCopyWithImpl<_$DescCommentEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String commentText, String rating, String hotel, String? userName)
        addComment,
  }) {
    return addComment(commentText, rating, hotel, userName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String commentText, String rating, String hotel, String? userName)?
        addComment,
  }) {
    return addComment?.call(commentText, rating, hotel, userName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String commentText, String rating, String hotel, String? userName)?
        addComment,
    required TResult orElse(),
  }) {
    if (addComment != null) {
      return addComment(commentText, rating, hotel, userName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DescCommentEvent value) addComment,
  }) {
    return addComment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DescCommentEvent value)? addComment,
  }) {
    return addComment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DescCommentEvent value)? addComment,
    required TResult orElse(),
  }) {
    if (addComment != null) {
      return addComment(this);
    }
    return orElse();
  }
}

abstract class DescCommentEvent implements DescBlocEvent {
  const factory DescCommentEvent(final String commentText, final String rating,
      final String hotel, final String? userName) = _$DescCommentEvent;

  @override
  String get commentText;
  @override
  String get rating;
  @override
  String get hotel;
  @override
  String? get userName;
  @override
  @JsonKey(ignore: true)
  _$$DescCommentEventCopyWith<_$DescCommentEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DescBlocState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() comment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? comment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? comment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DescInitialState value) initial,
    required TResult Function(DescCommentState value) comment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DescInitialState value)? initial,
    TResult? Function(DescCommentState value)? comment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DescInitialState value)? initial,
    TResult Function(DescCommentState value)? comment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DescBlocStateCopyWith<$Res> {
  factory $DescBlocStateCopyWith(
          DescBlocState value, $Res Function(DescBlocState) then) =
      _$DescBlocStateCopyWithImpl<$Res, DescBlocState>;
}

/// @nodoc
class _$DescBlocStateCopyWithImpl<$Res, $Val extends DescBlocState>
    implements $DescBlocStateCopyWith<$Res> {
  _$DescBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$DescInitialStateCopyWith<$Res> {
  factory _$$DescInitialStateCopyWith(
          _$DescInitialState value, $Res Function(_$DescInitialState) then) =
      __$$DescInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DescInitialStateCopyWithImpl<$Res>
    extends _$DescBlocStateCopyWithImpl<$Res, _$DescInitialState>
    implements _$$DescInitialStateCopyWith<$Res> {
  __$$DescInitialStateCopyWithImpl(
      _$DescInitialState _value, $Res Function(_$DescInitialState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DescInitialState implements DescInitialState {
  const _$DescInitialState();

  @override
  String toString() {
    return 'DescBlocState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DescInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() comment,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? comment,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? comment,
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
    required TResult Function(DescInitialState value) initial,
    required TResult Function(DescCommentState value) comment,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DescInitialState value)? initial,
    TResult? Function(DescCommentState value)? comment,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DescInitialState value)? initial,
    TResult Function(DescCommentState value)? comment,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class DescInitialState implements DescBlocState {
  const factory DescInitialState() = _$DescInitialState;
}

/// @nodoc
abstract class _$$DescCommentStateCopyWith<$Res> {
  factory _$$DescCommentStateCopyWith(
          _$DescCommentState value, $Res Function(_$DescCommentState) then) =
      __$$DescCommentStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DescCommentStateCopyWithImpl<$Res>
    extends _$DescBlocStateCopyWithImpl<$Res, _$DescCommentState>
    implements _$$DescCommentStateCopyWith<$Res> {
  __$$DescCommentStateCopyWithImpl(
      _$DescCommentState _value, $Res Function(_$DescCommentState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DescCommentState implements DescCommentState {
  const _$DescCommentState();

  @override
  String toString() {
    return 'DescBlocState.comment()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DescCommentState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() comment,
  }) {
    return comment();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? comment,
  }) {
    return comment?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? comment,
    required TResult orElse(),
  }) {
    if (comment != null) {
      return comment();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DescInitialState value) initial,
    required TResult Function(DescCommentState value) comment,
  }) {
    return comment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DescInitialState value)? initial,
    TResult? Function(DescCommentState value)? comment,
  }) {
    return comment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DescInitialState value)? initial,
    TResult Function(DescCommentState value)? comment,
    required TResult orElse(),
  }) {
    if (comment != null) {
      return comment(this);
    }
    return orElse();
  }
}

abstract class DescCommentState implements DescBlocState {
  const factory DescCommentState() = _$DescCommentState;
}
