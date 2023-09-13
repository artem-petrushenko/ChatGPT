import 'package:chat_gpt/src/data/repository/settings/settings_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'theme_event.dart';

part 'theme_state.dart';

part 'theme_bloc.freezed.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  final SettingsRepository _settingsRepository;

  ThemeBloc({
    required SettingsRepository settingsRepository,
  })  : _settingsRepository = settingsRepository,
        super(const ThemeState.current(themeIndex: 0)) {
    on<ThemeEvent>((event, emit) async {
      if (event is _ChangeTheme) {
        await _onChangeTheme(event, emit);
      } else if (event is _FetchCurrentTheme) {
        await _onFetchCurrentTheme(event, emit);
      }
    });
  }

  Future<void> _onChangeTheme(
    _ChangeTheme event,
    Emitter<ThemeState> emit,
  ) async {
    try {
      final themeIndex = event.themeIndex;
      await _settingsRepository.setCurrentTheme(themeIndex: themeIndex);
      emit(ThemeState.current(themeIndex: themeIndex));
    } catch (error) {
      emit(const ThemeState.current(themeIndex: 0));
    }
  }

  Future<void> _onFetchCurrentTheme(
    _FetchCurrentTheme event,
    Emitter<ThemeState> emit,
  ) async {
    try {
      final themeIndex = await _settingsRepository.getCurrentTheme();
      emit(ThemeState.current(themeIndex: themeIndex));
    } catch (error) {
      emit(const ThemeState.current(themeIndex: 0));
    }
  }
}
