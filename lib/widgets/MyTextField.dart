import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final IconData icon;
  final String label;
  final String hint;
  final TextInputType myTextType;
  final TextEditingController myTextController;
  final bool obscureText;

  const MyTextField({
    Key? key,
    required this.icon,
    required this.label,
    required this.myTextType,
    required this.myTextController,
    required this.hint,
    required this.obscureText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.199),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3)
          )
        ]
      ),
      child: TextField(
        keyboardType: myTextType,
        controller: myTextController,
        obscureText: obscureText,
        decoration: InputDecoration(
          label: Text(label),
          labelStyle: const TextStyle(
            color: Colors.black
          ),
          hintText: hint,
          prefixIcon: Icon(icon),
          prefixIconColor: Colors.black,
          border: OutlineInputBorder(
            borderSide: const BorderSide(width: 100),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }
}
