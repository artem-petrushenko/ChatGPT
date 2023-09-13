part of 'theme_bloc.dart';

@freezed
class ThemeState with _$ThemeState {
  const factory ThemeState.current({
    required int themeIndex,
  }) = _CurrentThemeState;
}
