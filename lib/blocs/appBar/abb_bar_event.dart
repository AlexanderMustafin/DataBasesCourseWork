part of 'abb_bar_bloc.dart';

@freezed
class AppBarEvent with _$AppBarEvent {
  const factory AppBarEvent.changeTheme(context, provider) =
      AppBarChangeThemeEvent;

  const factory AppBarEvent.changeValue(currencyValue, context) =
      AppBarChangeValueEvent;
}

// abstract class AbbBarEvent extends Equatable {
//   const AbbBarEvent();

//   @override
//   List<Object> get props => [];
// }

// class ChangeThemeEvent extends AbbBarEvent {
  // final context;
  // final provider;

//   ChangeThemeEvent(this.context, this.provider);
// }

// class ChangeValueEvent extends AbbBarEvent {
  // final currencyValue;
  // final context;

//   ChangeValueEvent(this.currencyValue, this.context);
// }
