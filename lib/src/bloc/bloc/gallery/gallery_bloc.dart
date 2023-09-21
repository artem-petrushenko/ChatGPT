import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:chat_gpt/src/data/provider/local_user_storage.dart';

part 'gallery_event.dart';

part 'gallery_state.dart';

part 'gallery_bloc.freezed.dart';

class GalleryBloc extends Bloc<GalleryEvent, GalleryState> {
  final localUserStorage = LocalUserStorage();

  GalleryBloc() : super(const GalleryState.loading()) {
    on<GalleryEvent>((event, emit) async {
      if (event is _FetchAssets) {
        try {
          final images = await localUserStorage.getLatestImages();
          emit(images.isEmpty ? const _Empty() : _Success(assets: images));
        } catch (error) {
          emit(_Failure(error: error));
        }
      }
    });
  }
}
