part of 'cities_selections_bloc.dart';

@freezed
class CitiesSelectionsState with _$CitiesSelectionsState {
  const factory CitiesSelectionsState.change(List<Town> list) = CityChangeState;
  const factory CitiesSelectionsState.initial(List listOfCities) =
      CityInitialState;
  const factory CitiesSelectionsState.error() = CityErrorState;
  const factory CitiesSelectionsState.wait() = CityWaitState;
}

// abstract class CitiesSelectionsState extends Equatable {
//   @override
//   List<Object> get props => [];
// }

// class CityChangeState extends CitiesSelectionsState {
//   final List<Town> list;
//   CityChangeState(this.list);
//   @override
//   List<Object> get props => [list];
// }

// class InitStateCitiesState extends CitiesSelectionsState {
//   final listOfCities;

//   InitStateCitiesState(this.listOfCities);
// }

// class ErrorState extends CitiesSelectionsState {
//   ErrorState();
// }

// class AwaitState extends CitiesSelectionsState {
//   AwaitState();
// }
