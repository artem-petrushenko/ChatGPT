abstract class SettingsRepository {
  Future<int> getCurrentTheme();

  Future<void> setCurrentTheme({required int themeIndex});
}
