part of 'city_desc_bloc.dart';

// @freezed
// class CityDescEvent with _$CityDescEvent {
//   const factory CityDescEvent.initHotel(final townName) =
//       CityDescInitHotelEvent;

//   const factory CityDescEvent.initCafe(final townName) = CityDescInitCafeEvent;

//   const factory CityDescEvent.initAtraction(final townName) =
//       CityDescInitAtractionEvent;

//   const factory CityDescEvent.addComment(
//       final String commentText,
//       final String rating,
//       final String townName,
//       final String? userName) = CityDescAddCommentEvent;

//   const factory CityDescEvent.addFavorite(
//       bool isFavorite, final String cityName) = CityDescAddFavoriteEvent;

//   const factory CityDescEvent.removeFavorite(
//       bool isFavorite, final String cityName) = CityDescRemoveFavoriteEvent;
// }

abstract class CityDescEvent extends Equatable {
  const CityDescEvent();

  @override
  List<Object> get props => [];
}

class InitialEventHotel extends CityDescEvent {
  final townName;

  InitialEventHotel(this.townName);

  @override
  List<Object> get props => [townName];
}

class InitialEventCafe extends CityDescEvent {
  final townName;

  InitialEventCafe(this.townName);

  @override
  List<Object> get props => [townName];
}

class InitialEventAtraction extends CityDescEvent {
  final townName;

  InitialEventAtraction(this.townName);

  @override
  List<Object> get props => [townName];
}

class AddCommentEvent extends CityDescEvent {
  final String commentText;
  final String rating;
  final String townName;
  final String? userName;

  AddCommentEvent(
    this.commentText,
    this.rating,
    this.townName,
    this.userName,
  );
}

class AddFavoriteEvent extends CityDescEvent {
  bool isFavorite;
  final String cityName;

  AddFavoriteEvent(
    this.isFavorite,
    this.cityName,
  );
}

class RemoveFavoriteEvent extends CityDescEvent {
  bool isFavorite;
  final String cityName;

  RemoveFavoriteEvent(
    this.isFavorite,
    this.cityName,
  );
}
