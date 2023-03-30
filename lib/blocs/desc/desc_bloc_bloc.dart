import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'desc_bloc_event.dart';
part 'desc_bloc_state.dart';

class DescBlocBloc extends Bloc<DescBlocEvent, DescBlocState> {
  DescBlocBloc() : super(DescBlocInitial()) {
    on<AddCommentEvent>((event, emit) {
      try {
        FirebaseFirestore.instance.collection('Hotel comment').add({
          'Comment': event.commentText,
          'Rating': event.rating,
          'Hotel': event.hotel,
          'UserName': event.userName,
        });
      } catch (e) {
        print(e);
      }
    });
  }
}
