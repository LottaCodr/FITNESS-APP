import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:provider/provider.dart';
import 'package:the_trainer/widgets/profile_button.dart';
import '../Models/theme_provider.dart';
import 'Profile Creation/Change_Languages_Screen.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        centerTitle: true,
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(12),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(12),
                  child: GestureDetector(
                    onTap: () {
                      themeProvider.toggleTheme();
                    },
                    child: ListTile(
                      leading: themeProvider.themeMode == ThemeMode.dark
                          ? const Icon(Icons.dark_mode)
                          : const Icon(Icons.light_mode),
                      title: Text(themeProvider.themeMode == ThemeMode.dark
                          ? 'Switch to Light Mode'
                          : 'Switch to Dark Mode'),
                      trailing: themeProvider.themeMode == ThemeMode.dark
                          ? const Icon(
                              Icons.toggle_on_outlined,
                              size: 36,
                            )
                          : const Icon(
                              Icons.toggle_off,
                              size: 36,
                            ),
                    ),
                  ),
                ),
                ProfileButton(
                    title: 'Change Language',
                    icon: Icons.language,
                    myNavigator: () {
                      Get.to(const ChangeLanguagesScreen(),
                          transition: Transition.fadeIn,
                          duration: const Duration(seconds: 1));
                    }),
                ProfileButton(
                    title: 'Privacy',
                    icon: Icons.privacy_tip_outlined,
                    myNavigator: () {}),
                ProfileButton(
                  title: 'Help',
                  icon: Icons.help,
                  myNavigator: () {},
                ),
                ProfileButton(
                  title: 'About',
                  icon: Icons.fact_check,
                  myNavigator: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
