part of 'cities_selections_bloc.dart';

@freezed
class CitiesSelectionsEvent with _$CitiesSelectionsEvent {
  const factory CitiesSelectionsEvent.init(city) = InitStateCitiesEvent;
  const factory CitiesSelectionsEvent.change(value) = CityChangeEvent;
}


// abstract class CitiesSelectionsEvent extends Equatable {
//   const CitiesSelectionsEvent();

//   @override
//   List<Object> get props => [];
// }

// class CityChangeEvent extends CitiesSelectionsEvent {
//   final value;

//   CityChangeEvent(this.value);
// }

// class InitStateCitiesEvent extends CitiesSelectionsEvent {
//   final city;

//   InitStateCitiesEvent(this.city);
// }
