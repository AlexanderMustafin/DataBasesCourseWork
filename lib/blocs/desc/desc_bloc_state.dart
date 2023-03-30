part of 'desc_bloc_bloc.dart';

abstract class DescBlocState extends Equatable {
  const DescBlocState();

  @override
  List<Object> get props => [];
}

class DescBlocInitial extends DescBlocState {}

class CommentState extends DescBlocState {}
