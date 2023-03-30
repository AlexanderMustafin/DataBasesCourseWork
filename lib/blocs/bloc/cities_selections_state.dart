part of 'cities_selections_bloc.dart';

abstract class CitiesSelectionsState extends Equatable {
  final String? data;
  const CitiesSelectionsState(this.data);

  @override
  List<Object> get props => [];
}

class CityChangeState extends CitiesSelectionsState {
  const CityChangeState(data) : super(data);
}

class InitStateCitiesState extends CitiesSelectionsState {
  final listOfCities;

  InitStateCitiesState(this.listOfCities, data) : super(data);
}

class ErrorState extends CitiesSelectionsState {
  ErrorState(data) : super(data);
}

class AwaitState extends CitiesSelectionsState {
  AwaitState(data) : super(data);
}
