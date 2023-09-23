part of 'theme_bloc.dart';

@freezed
class ThemeEvent with _$ThemeEvent {
  const factory ThemeEvent.fetchCurrentTheme() = _FetchCurrentTheme;

  const factory ThemeEvent.changeTheme({required int themeIndex}) =
      _ChangeTheme;
}
