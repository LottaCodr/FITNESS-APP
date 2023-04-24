import 'package:flutter/material.dart';

class TheTextRow extends StatelessWidget {
  final String leftText;
  final String rightText;

  const TheTextRow({Key? key, required this.leftText, required this.rightText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
         Text(
          leftText,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        TextButton(
          onPressed: () {},
          child:  Text(rightText, ),
        ),
      ],
    );
  }
}
