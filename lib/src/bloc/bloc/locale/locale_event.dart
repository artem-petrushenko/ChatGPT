part of 'locale_bloc.dart';

@freezed
class LocaleEvent with _$LocaleEvent {
  const factory LocaleEvent.fetchCurrentLocale() = _FetchCurrentLocaleEvent;

  const factory LocaleEvent.changeLocale({required String locale}) =
      _ChangeLocaleEvent;
}
