import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../database/database.dart';

part 'city_desc_event.dart';
part 'city_desc_state.dart';

class CityDescBloc extends Bloc<CityDescEvent, CityDescState> {
  CityDescBloc() : super(InitialState([], [], [])) {
    on<InitialEventHotel>((event, emit) async {
      await emit.forEach(readHotel(event.townName),
          onData: (List<Hotel> hotels) {
        return HotelChangeState(hotels, state.listCafe, state.listAttraction);
      }).catchError((error) {
        return;
      });
    });

    on<InitialEventCafe>((event, emit) async {
      await emit.forEach(readCafe(event.townName), onData: (List<Cafe> cafe) {
        return HotelChangeState(state.listHotels, cafe, state.listAttraction);
      }).catchError((error) {
        return;
      });
    });

    on<InitialEventAtraction>((event, emit) async {
      await emit.forEach(readAttraction(event.townName),
          onData: (List<Attraction> attraction) {
        return HotelChangeState(state.listHotels, state.listCafe, attraction);
      }).catchError((error) {
        return;
      });
    });

    on<AddCommentEvent>((event, emit) {
      try {
        FirebaseFirestore.instance.collection('Note comment').add({
          'Comment': event.commentText,
          'Rating': event.rating,
          'Town': event.townName,
          'UserName': event.userName,
        });
      } catch (e) {
        print(e);
      }
    });

    on<AddFavoriteEvent>((event, emit) {
      try {
        FirebaseFirestore.instance
            .collection('Town')
            .doc(event.cityName)
            .update({'isFavorite': true});
        event.isFavorite = true;
      } catch (e) {
        print(e);
      }
    });

    on<RemoveFavoriteEvent>((event, emit) {
      try {
        FirebaseFirestore.instance
            .collection('Town')
            .doc(event.cityName)
            .update({'isFavorite': false});
        event.isFavorite = false;
      } catch (e) {
        print(e);
      }
    });
  }
}
