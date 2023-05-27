import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:provider/provider.dart';

import '../../theme.dart';

part 'abb_bar_bloc.freezed.dart';

part 'abb_bar_event.dart';
part 'abb_bar_state.dart';

class AppBarBloc extends Bloc<AppBarEvent, AppBarState> {
  AppBarBloc() : super(const AppBarState.initial()) {
    on<AppBarChangeThemeEvent>(
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
  }
}
