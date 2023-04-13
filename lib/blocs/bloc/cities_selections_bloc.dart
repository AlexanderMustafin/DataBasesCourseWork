import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../database/database.dart';

part 'cities_selections_event.dart';
part 'cities_selections_state.dart';

class CitiesSelectionsBloc
    extends Bloc<CitiesSelectionsEvent, CitiesSelectionsState> {
  CitiesSelectionsBloc() : super(InitStateCitiesState({})) {
    on<InitStateCitiesEvent>((event, emit) async {
      await emit.forEach(readTown(event.city),
          onData: (List<Town> coming_data) {
        return CityChangeState(coming_data);
      }).catchError((error) {
        return ErrorState();
      });
    });
  }
}
