part of 'abb_bar_bloc.dart';

abstract class AbbBarEvent extends Equatable {
  const AbbBarEvent();

  @override
  List<Object> get props => [];
}

class ChangeThemeEvent extends AbbBarEvent {
  final context;
  final provider;

  ChangeThemeEvent(this.context, this.provider);
}

class ChangeValueEvent extends AbbBarEvent {
  final currencyValue;
  final context;

  ChangeValueEvent(this.currencyValue, this.context);
}
