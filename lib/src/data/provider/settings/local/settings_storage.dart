abstract class SettingsStorage {
  Future<int> getCurrentTheme();

  Future<void> setCurrentTheme({required int themeIndex});
}
