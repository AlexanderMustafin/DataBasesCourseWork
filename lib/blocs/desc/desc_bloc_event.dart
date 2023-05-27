part of 'desc_bloc_bloc.dart';

@freezed
class DescBlocEvent with _$DescBlocEvent {
  const factory DescBlocEvent.addComment(
      final String commentText,
      final String rating,
      final String hotel,
      final String? userName) = DescCommentEvent;
}

// abstract class DescBlocEvent extends Equatable {
//   const DescBlocEvent();

//   @override
//   List<Object> get props => [];
// }

// class AddCommentEvent extends DescBlocEvent {
//   final String commentText;
//   final String rating;
//   final String hotel;
//   final String? userName;

//   AddCommentEvent(
//     this.commentText,
//     this.rating,
//     this.hotel,
//     this.userName,
//   );
// }
