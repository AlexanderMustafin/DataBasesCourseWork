part of 'desc_bloc_bloc.dart';

@freezed
class DescBlocState with _$DescBlocState {
  const factory DescBlocState.initial() = DescInitialState;
  const factory DescBlocState.comment() = DescCommentState;
}

// abstract class DescBlocState extends Equatable {
//   const DescBlocState();

//   @override
//   List<Object> get props => [];
// }

// class DescBlocInitial extends DescBlocState {}

// class CommentState extends DescBlocState {}
