import 'package:rick_and_morty_app/data/providers/local_storage_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesStorageProvider implements LocalStorageProvider {
  @override
  Future<void> set({required String key, required String value}) async {
    final preferences = await SharedPreferences.getInstance();
    await preferences.setString(key, value);
  }

  @override
  Future<String?> get(String key) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(key);
  }

  @override
  Future<void> remove(String key) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(key);
  }

  @override
  Future<void> removeAll() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.clear();
  }
}
