part of 'abb_bar_bloc.dart';

abstract class AbbBarState extends Equatable {
  const AbbBarState();

  @override
  List<Object> get props => [];
}

class AbbBarInitial extends AbbBarState {}

class ChangeThemeState extends AbbBarState {}

class ChangeValueState extends AbbBarState {
  final String value;

  ChangeValueState(this.value);
}
