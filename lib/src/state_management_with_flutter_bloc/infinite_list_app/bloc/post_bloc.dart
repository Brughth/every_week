import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:every_day/src/state_management_with_flutter_bloc/infinite_list_app/models/post.dart';
import 'package:flutter/material.dart';

part 'post_event.dart';
part 'post_state.dart';

class PostBloc extends Bloc<PostEvent, PostState> {
  PostBloc({required this.httpClient}) : super(const PostState()) {
    on<PostEvent>((event, emit) {
      /// TODO: implement event handler
    });
  }

  final HttpClient httpClient;
}
