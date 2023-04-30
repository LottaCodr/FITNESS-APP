import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:the_trainer/User%20_Auth/Sign_up.dart';
import 'package:the_trainer/widgets/navbar.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
        brightness: Brightness.dark,
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedItemColor: Colors.red
        )
      ),
      home:  const SignUpPage(),
    );
  }
}
