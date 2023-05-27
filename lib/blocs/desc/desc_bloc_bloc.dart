import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'desc_bloc_bloc.freezed.dart';

part 'desc_bloc_event.dart';
part 'desc_bloc_state.dart';

class DescBlocBloc extends Bloc<DescBlocEvent, DescBlocState> {
  DescBlocBloc() : super(const DescBlocState.initial()) {
    on<DescCommentEvent>((event, emit) {
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
