import 'package:flutter/material.dart';

class BodyFeaturesToggle extends StatefulWidget {
  const BodyFeaturesToggle({Key? key}) : super(key: key);

  @override
  State<BodyFeaturesToggle> createState() => _BodyFeaturesToggleState();
}

class _BodyFeaturesToggleState extends State<BodyFeaturesToggle> {
  int _selectedIndex = 0;
  int _currentTab = 0;

  final List<String> _bodyFeatures = [
    'All',
    'Full body',
    'Upper',
    'Lower',
    'Back',
    'Calves'
  ];

  Widget _buildBodyFeatures(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
        print(_selectedIndex);
      },
      child: Container(
        padding: EdgeInsets.all(5),
        height: 50,
        width: 60,
        decoration: BoxDecoration(
            color:
                _selectedIndex == index ? Colors.red : Colors.blueGrey[800],
            borderRadius: BorderRadius.circular(20)),
        child: Center(
          child: FittedBox(
            fit: BoxFit.fill,
            child: Text(
              _bodyFeatures[index],
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: _selectedIndex == index
                      ? Colors.white
                      : Colors.grey[600]),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: _bodyFeatures
          .asMap()
          .entries
          .map((MapEntry map) => _buildBodyFeatures(map.key))
          .toList(),
    );
  }
}
