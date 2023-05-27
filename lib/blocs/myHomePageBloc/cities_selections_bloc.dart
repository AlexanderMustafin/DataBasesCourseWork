import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../database/database.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cities_selections_bloc.freezed.dart';

part 'cities_selections_event.dart';
part 'cities_selections_state.dart';

class CitiesSelectionsBloc
    extends Bloc<CitiesSelectionsEvent, CitiesSelectionsState> {
  CitiesSelectionsBloc() : super(const CitiesSelectionsState.initial([])) {
    on<InitStateCitiesEvent>((event, emit) async {
      await emit.forEach(readTown(event.city),
          onData: (List<Town> coming_data) {
        return CitiesSelectionsState.change(coming_data);
      }).catchError((error) {
        return CitiesSelectionsState.error();
      });
    });
  }
}
