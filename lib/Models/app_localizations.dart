import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppLocalizations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    'en': {
      'title': 'App Title',
      'button': 'Change Lanugage'
    },
    'es': {
      'title': 'Título de la aplicación',
      'button': 'Cambiar idioma'
    }
  };
}