import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:the_trainer/screens/home_page.dart';
import 'package:the_trainer/screens/profile_page.dart';
import 'package:the_trainer/screens/ProgressScreen.dart';

import '../screens/WorkoutScreen.dart';

class MyBottomNavBar extends StatefulWidget {
  const MyBottomNavBar({Key? key}) : super(key: key);

  @override
  State<MyBottomNavBar> createState() => _MyBottomNavBarState();
}

class _MyBottomNavBarState extends State<MyBottomNavBar> {
  Locale _locale = const Locale('en', 'US');


  @override
  void initState() {
    super.initState();
    SharedPreferences.getInstance().then((prefs) {
      String? languageCode = prefs.getString('languageCode');
      String? languageCountry = prefs.getString('languageCountry');

      setState(() {
        _locale = Locale(languageCode!, languageCountry);
      });

    });
  }

  int _selectedIndex = 0;

  final _screens = [
    const HomePage(),
    const ProgressScreen(),
    const WorkoutInfo(),
    const TheProfile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: _screens
            .asMap()
            .map((i, screen) => MapEntry(
                i,
                Offstage(
                  offstage: _selectedIndex != i,
                  child: screen,
                )))
            .values
            .toList(),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: (i) => setState(() {
                _selectedIndex = i;
              }),
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                activeIcon: Icon(Icons.home),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.insert_chart),
                activeIcon: Icon(Icons.insert_chart_outlined),
                label: 'Workouts'),
            BottomNavigationBarItem(
                icon: Icon(Icons.fitness_center_outlined),
                activeIcon: Icon(Icons.fitness_center),
                label: 'Progress'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_2_outlined),
                activeIcon: Icon(Icons.person),
                label: 'You')
          ]),
    );
  }
}
