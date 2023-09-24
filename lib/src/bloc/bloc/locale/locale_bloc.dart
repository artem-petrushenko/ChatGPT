import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:chat_gpt/src/data/repository/settings/settings_repository.dart';

part 'locale_event.dart';

part 'locale_state.dart';

part 'locale_bloc.freezed.dart';

class LocaleBloc extends Bloc<LocaleEvent, LocaleState> {
  final SettingsRepository _settingsRepository;

  LocaleBloc({
    required SettingsRepository settingsRepository,
  })  : _settingsRepository = settingsRepository,
        super(const LocaleState.current(locale: 'en')) {
    on<LocaleEvent>((event, emit) async {
      if (event is _FetchCurrentLocaleEvent) {
        await _onFetchCurrentLocale(event, emit);
      } else if (event is _ChangeLocaleEvent) {
        await _onChangeLocale(event, emit);
      }
    });
  }

  Future<void> _onChangeLocale(
    _ChangeLocaleEvent event,
    Emitter<LocaleState> emit,
  ) async {
    try {
      final locale = event.locale;
      await _settingsRepository.setCurrentLocale(locale: locale);
      emit(LocaleState.current(locale: locale));
    } catch (error) {
      emit(const LocaleState.current(locale: 'en'));
    }
  }

  Future<void> _onFetchCurrentLocale(
    _FetchCurrentLocaleEvent event,
    Emitter<LocaleState> emit,
  ) async {
    try {
      final locale = await _settingsRepository.getCurrentLocale();
      emit(LocaleState.current(locale: locale));
    } catch (error) {
      emit(const LocaleState.current(locale: 'en'));
    }
  }
}
