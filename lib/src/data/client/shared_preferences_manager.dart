import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesManager {
  Future<void> setString(String key, String value) async {
    final preferences = await SharedPreferences.getInstance();
    await preferences.setString(key, value);
  }

  Future<String?> getString(String key) async {
    final preferences = await SharedPreferences.getInstance();
    return preferences.getString(key);
  }

  Future<void> setInt(String key, int value) async {
    final preferences = await SharedPreferences.getInstance();
    await preferences.setInt(key, value);
  }

  Future<int?> getInt(String key) async {
    final preferences = await SharedPreferences.getInstance();
    return preferences.getInt(key);
  }
}
