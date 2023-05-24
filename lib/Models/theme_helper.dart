import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeHelper {
  static const String themeModelKey = 'themeMode';

  static Future<ThemeMode> getThemeModel() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final themeMode = prefs.getString(themeModelKey);
    return themeMode == 'dark' ? ThemeMode.dark : ThemeMode.light;
  }

  static Future<void> setThemeMode(ThemeMode themeMode) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(
        themeModelKey, themeMode == ThemeMode.dark ? 'dark' : 'light');
  }
}
