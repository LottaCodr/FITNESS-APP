import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'theme_helper.dart';


//enum ThemeMode { light, dark, }

class ThemeProvider extends ChangeNotifier {
 ThemeMode _themeMode = ThemeMode.light;


  ThemeMode get themeMode => _themeMode;
  ThemeMode get darkTheme => ThemeMode.dark;

  ThemeProvider() {
    _loadThemeMode();
  }

  Future<void> _loadThemeMode() async {
    final savedThemeMode = await ThemeHelper.getThemeModel();
    _themeMode = savedThemeMode ?? ThemeMode.light;
  }

  Future<void> toggleTheme() async {
    _themeMode = themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    await ThemeHelper.setThemeMode(_themeMode);
    notifyListeners();
    }
  }
