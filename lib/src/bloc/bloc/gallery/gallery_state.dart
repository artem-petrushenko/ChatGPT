part of 'gallery_bloc.dart';

@freezed
class GalleryState with _$GalleryState {
  const factory GalleryState.loading() = _Initial;

  const factory GalleryState.success({
    required final List<File> assets,
  }) = _Success;

  const factory GalleryState.empty() = _Empty;

  const factory GalleryState.failure({
    required final Object error,
  }) = _Failure;
}
