import 'package:flutter/material.dart';
import 'package:the_trainer/screens/home_page.dart';
import 'package:the_trainer/screens/workout_info.dart';

class MyBottomNavBar extends StatefulWidget {


  const MyBottomNavBar(
      {Key? key})
      : super(key: key);

  @override
  State<MyBottomNavBar> createState() => _MyBottomNavBarState();
}

class _MyBottomNavBarState extends State<MyBottomNavBar> {
  int _selectedIndex = 0;

  final _screens = [
    const HomePage(),
    const WorkoutInfo(),
    const Scaffold(
      body: Center(
        child: Text('progress'),
      ),
    ),
    const Scaffold(
      body: Center(
        child: Text('You'),
      ),
    )
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
                icon: Icon(Icons.fitness_center_outlined),
                activeIcon: Icon(Icons.fitness_center),
                label: 'Workout'),
            BottomNavigationBarItem(
                icon: Icon(Icons.history_outlined),
                activeIcon: Icon(Icons.history),
                label: 'history'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_2_outlined),
                activeIcon: Icon(Icons.person),
                label: 'You')
          ]),
    );
  }
}
