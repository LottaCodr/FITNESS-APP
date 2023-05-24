import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';


class LanguageController extends GetxController {
  final SharedPreferences _preferences;

  LanguageController(this._preferences);

  void changeLanguage(String languageCode){
    Get.updateLocale(Locale(languageCode));
    _preferences.setString('language', languageCode);
  }
}