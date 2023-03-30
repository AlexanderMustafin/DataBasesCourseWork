import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

part 'city_desc_event.dart';
part 'city_desc_state.dart';

class CityDescBloc extends Bloc<CityDescEvent, CityDescState> {
  CityDescBloc() : super(CityDescInitial()) {
    on<AddCommentEvent>((event, emit) {
      try {
        FirebaseFirestore.instance.collection('Note comment').add({
          'Comment': event.commentText,
          'Rating': event.rating,
          'Town': event.townName,
          'UserName': event.userName,
        });
        emit(CommentState());
      } catch (e) {
        print(e);
      }
    });

    on<FavoriteEvent>((event, emit) {
      try {
        if (event.isFavorite == true) {
          FirebaseFirestore.instance
              .collection('Town')
              .doc(event.cityName)
              .update({'isFavorite': false});
          emit(FavoriteState(false));
        } else {
          FirebaseFirestore.instance
              .collection('Town')
              .doc(event.cityName)
              .update({'isFavorite': true});
          emit(FavoriteState(true));
        }
      } catch (e) {
        print(e);
      }
    });
  }
}
