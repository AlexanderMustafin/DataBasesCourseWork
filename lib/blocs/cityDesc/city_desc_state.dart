part of 'city_desc_bloc.dart';

abstract class CityDescState extends Equatable {
  const CityDescState();

  @override
  List<Object> get props => [];
}

class CityDescInitial extends CityDescState {}

class CommentState extends CityDescState {}

class FavoriteState extends CityDescState {
  final bool isFavorite;

  FavoriteState(this.isFavorite);
}
