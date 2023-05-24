import 'package:shared_preferences/shared_preferences.dart';

class LanguageHelper {

  static const String selectedLanguageKey = 'selectedLanguage';

  static Future<String>  getSelectedLanguage() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.getString(selectedLanguageKey) ?? 'en' ;
  }

  static Future<void> setSelectedLanguage(String languageCode) async {
   SharedPreferences prefs = await SharedPreferences.getInstance();
   await prefs.setString(selectedLanguageKey, languageCode);
  }
}