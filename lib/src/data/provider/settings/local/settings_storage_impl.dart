import 'package:chat_gpt/src/data/client/shared_preferences_manager.dart';
import 'package:chat_gpt/src/data/provider/settings/local/settings_storage.dart';

class SettingsStorageImpl implements SettingsStorage {
  const SettingsStorageImpl({
    required SharedPreferencesManager sharedPreferencesManager,
  }) : _sharedPreferencesManager = sharedPreferencesManager;

  final SharedPreferencesManager _sharedPreferencesManager;

  @override
  Future<int> getCurrentTheme() async =>
      await _sharedPreferencesManager.getInt('theme') ?? 0;

  @override
  Future<void> setCurrentTheme({required int themeIndex}) async =>
      await _sharedPreferencesManager.setInt('theme', themeIndex);
}
