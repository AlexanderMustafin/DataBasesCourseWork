part of 'city_desc_bloc.dart';

abstract class CityDescState extends Equatable {
  const CityDescState(this.listHotels, this.listCafe, this.listAttraction);

  final List<Hotel> listHotels;
  final List<Cafe> listCafe;
  final List<Attraction> listAttraction;

  @override
  List<Object> get props => [];
}

class HotelChangeState extends CityDescState {
  final List<Hotel> listHotels;
  final List<Cafe> listCafe;
  final List<Attraction> listAttraction;

  const HotelChangeState(this.listHotels, this.listCafe, this.listAttraction)
      : super(listHotels, listCafe, listAttraction);
  @override
  List<Object> get props => [
        [listHotels, listCafe, listAttraction]
      ];
}

class InitialState extends CityDescState {
  final List<Hotel> listHotels;
  final List<Cafe> listCafe;
  final List<Attraction> listAttraction;

  InitialState(this.listHotels, this.listCafe, this.listAttraction)
      : super(listHotels, listCafe, listAttraction);
}
