part of 'cities_selections_bloc.dart';

abstract class CitiesSelectionsEvent extends Equatable {
  const CitiesSelectionsEvent();

  @override
  List<Object> get props => [];
}

class CityChangeEvent extends CitiesSelectionsEvent {
  final value;

  CityChangeEvent(this.value);
}

class InitStateCitiesEvent extends CitiesSelectionsEvent {}
