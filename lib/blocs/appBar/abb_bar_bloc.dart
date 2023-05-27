import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:provider/provider.dart';

import '../../theme.dart';

part 'abb_bar_event.dart';
part 'abb_bar_state.dart';

class AbbBarBloc extends Bloc<AbbBarEvent, AbbBarState> {
  AbbBarBloc() : super(AbbBarInitial()) {
    on<ChangeThemeEvent>(
      (event, emit) {
        if (event.provider.currentTheme == "light") {
          event.provider.currentTheme = "dark";
        } else if (event.provider.currentTheme == "dark") {
          event.provider.currentTheme = "light";
        } else {
          event.provider.currentTheme = "system";
        }
        Provider.of<ThemeProvider>(event.context, listen: false)
            .changeTheme(event.provider.currentTheme);
      },
    );

    on<ChangeValueEvent>((event, emit) {
      if (state is ChangeValueState) {}
    });
  }
}
