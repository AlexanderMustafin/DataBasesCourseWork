part of 'abb_bar_bloc.dart';

@freezed
class AppBarState with _$AppBarState {
  const factory AppBarState.initial() = AppBarInitialState;
  const factory AppBarState.changeTheme() = AppBarChangeThemeState;
  const factory AppBarState.changeValue(String value) = AppBarChangeValueState;
}

// abstract class AbbBarState extends Equatable {
//   const AbbBarState();

//   @override
//   List<Object> get props => [];
// }

// class AbbBarInitial extends AbbBarState {}

// class ChangeThemeState extends AbbBarState {}

// class ChangeValueState extends AbbBarState {
//   final String value;
//   @override
//   List<Object> get props => [value];

//   ChangeValueState(this.value);
// }
