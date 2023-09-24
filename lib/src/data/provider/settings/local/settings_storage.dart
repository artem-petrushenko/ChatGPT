abstract class SettingsStorage {
  Future<int> getCurrentTheme();

  Future<void> setCurrentTheme({required int themeIndex});

  Future<String> getCurrentLocale();

  Future<void> setCurrentLocale({required String locale});
}
