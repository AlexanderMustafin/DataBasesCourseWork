part of 'city_desc_bloc.dart';

abstract class CityDescEvent extends Equatable {
  const CityDescEvent();

  @override
  List<Object> get props => [];
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

class FavoriteEvent extends CityDescEvent {
  bool isFavorite;
  final String cityName;

  FavoriteEvent(
    this.isFavorite,
    this.cityName,
  );
}
