part of 'cities_selections_bloc.dart';

abstract class CitiesSelectionsState extends Equatable {
  @override
  List<Object> get props => [];
}

class CityChangeState extends CitiesSelectionsState {
  final List<Town> list;
  CityChangeState(this.list);
  @override
  List<Object> get props => [list];
}

class InitStateCitiesState extends CitiesSelectionsState {
  final listOfCities;

  InitStateCitiesState(this.listOfCities);
}

class ErrorState extends CitiesSelectionsState {
  ErrorState();
}

class AwaitState extends CitiesSelectionsState {
  AwaitState();
}
