import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../database/database.dart';

part 'cities_selections_event.dart';
part 'cities_selections_state.dart';

class CitiesSelectionsBloc
    extends Bloc<CitiesSelectionsEvent, CitiesSelectionsState> {
  CitiesSelectionsBloc() : super(const CityChangeState(null)) {
    on<CityChangeEvent>((event, emit) {
      if (state.data == null) {
        emit(AwaitState(null));
      } else if (state.data != null) {
        emit(InitStateCitiesState(state.data, readTown(state.data!)));
      } else {
        emit(ErrorState('Error'));
      }
    });
  }
}
