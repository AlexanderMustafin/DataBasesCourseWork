part of 'desc_bloc_bloc.dart';

abstract class DescBlocEvent extends Equatable {
  const DescBlocEvent();

  @override
  List<Object> get props => [];
}

class AddCommentEvent extends DescBlocEvent {
  final String commentText;
  final String rating;
  final String hotel;
  final String? userName;

  AddCommentEvent(
    this.commentText,
    this.rating,
    this.hotel,
    this.userName,
  );
}
