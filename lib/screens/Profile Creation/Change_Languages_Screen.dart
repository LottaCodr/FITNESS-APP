import 'package:flutter/material.dart';
import 'package:the_trainer/Models/language_controller.dart';
import 'package:the_trainer/Models/language_helper.dart';
import 'package:get/get.dart';

class ChangeLanguagesScreen extends StatefulWidget {
  const ChangeLanguagesScreen({Key? key}) : super(key: key);

  @override
  State<ChangeLanguagesScreen> createState() => _ChangeLanguagesScreenState();
}

class _ChangeLanguagesScreenState extends State<ChangeLanguagesScreen> {
  List<String> languages = [
    'English',
    'French',
    'Spanish',
    'Arabic',
    'Swahili'
  ];

  String selectedLanguage = '';

  @override
  void initState() {
    super.initState();
    _loadSelectedLanguage();
  }

  Future<void> _loadSelectedLanguage() async {
    final languageCode = await LanguageHelper.getSelectedLanguage();
    setState(() {
      selectedLanguage = languageCode;
    });
  }

  final LanguageController _languageController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select a Language'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: languages.length,
        itemBuilder: (BuildContext context, int index) {
          final language = languages[index];
          return ListTile(
            title: Text(language),
            trailing:
            selectedLanguage == language ? const Icon(Icons.check) : null,
            onTap: () {
              final newLanguageCode =
              Get.locale!.languageCode == 'en' ? 'es' : 'en';
              _languageController.changeLanguage(newLanguageCode);

              // Update the selected language
              setState(() {
                selectedLanguage = language;
              });

              Navigator.pushReplacementNamed(context, '/home');
            },
          );
        },
      ),
    );
  }

  String getLanguageCode(String language) {
    if (language == 'English') {
      return 'en';
    } else if (language == 'French') {
      return 'fr';
    } else if (language == 'Spanish') {
      return 'es';
    }
    return '';
  }
}
