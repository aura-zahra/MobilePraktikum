import 'package:shared_preferences/shared_preferences.dart';

class SessionManager {
  static const String _keyUsername = 'username';

  // Save user session
  static Future<void> saveUser(String username) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_keyUsername, username);
  }

  // Get current user session
  static Future<String?> getUser() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_keyUsername);
  }

  // Clear user session
  static Future<void> clearSession() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_keyUsername);
  }

  static Future<bool> isLoggedIn() async {
    // Replace this with your actual logic to check if the user is logged in
    return Future.value(false);
  }
}