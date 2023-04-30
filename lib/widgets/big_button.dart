import 'package:flutter/material.dart';

class BigButton extends StatelessWidget {
  final String myText;
  final Function myNavigation;

  const BigButton({Key? key, required this.myNavigation, required this.myText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () => myNavigation,
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
        child: Text(
          myText,
          style: const TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
