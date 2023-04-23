import 'package:flutter/material.dart';

class TheCircle extends StatelessWidget {
  final String mainText;
  final String the2ndText;
  final String lastText;

  const TheCircle({
    Key? key,
    required this.mainText,
    required this.the2ndText,
    required this.lastText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 105,
      height: 105,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.blueGrey, width: 2.5),
        //borderRadius: BorderRadius.circular(50)
      ),
      child: Column(
        children:  [
          Text(
            mainText,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          Text(
            the2ndText,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14
            ),
          ),
          Text(
            lastText,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 12
            ),
          )
        ],
      ),
    );
  }
}
