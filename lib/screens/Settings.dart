import 'package:flutter/material.dart';
import 'package:the_trainer/widgets/profile_button.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
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
                  child: const ListTile(
                    leading: Icon(Icons.dark_mode),
                    title: Text('Dark mode'),
                    trailing: Icon(
                      Icons.toggle_on_outlined,
                      size: 35,
                    ),
                  ),
                ),
                ProfileButton(
                    title: 'Change Language',
                    icon: Icons.language,
                    myNavigator: () {}),
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
