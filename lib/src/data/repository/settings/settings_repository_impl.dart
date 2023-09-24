import 'package:chat_gpt/src/data/provider/settings/local/settings_storage.dart';
import 'package:chat_gpt/src/data/repository/settings/settings_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

@immutable
class SettingsRepositoryImpl implements SettingsRepository {
  const SettingsRepositoryImpl({
    required SettingsStorage settingsStorage,
  }) : _settingsStorage = settingsStorage;

  final SettingsStorage _settingsStorage;

  @override
  Future<int> getCurrentTheme() async =>
      await _settingsStorage.getCurrentTheme();

  @override
  Future<void> setCurrentTheme({required int themeIndex}) async =>
      await _settingsStorage.setCurrentTheme(themeIndex: themeIndex);

  @override
  Future<String> getCurrentLocale() async =>
      await _settingsStorage.getCurrentLocale();

  @override
  Future<void> setCurrentLocale({required String locale}) async =>
      await _settingsStorage.setCurrentLocale(locale: locale);
}
