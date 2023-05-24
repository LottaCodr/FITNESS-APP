import 'dart:async';

import 'package:flutter/material.dart';
import 'package:the_trainer/screens/Profile%20Creation/PersonalizedPlan.dart';
import '../widgets/navbar.dart';

class MySplashScreen extends StatefulWidget {
  const MySplashScreen({Key? key}) : super(key: key);

  @override
  State<MySplashScreen> createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen> with TickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController _controller;
  GlobalKey<ScaffoldState> _globalKey = GlobalKey();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }



  void startTimer() {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (e) => const MyBottomNavBar()));
    });
  }

  @override
  void initState() {
    super.initState();
    _controller =
    AnimationController(vsync: this, duration: const Duration(seconds: 2))..forward();
    animation = CurvedAnimation(parent: _controller, curve: Curves.linear);
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ScaleTransition(
              scale: animation,
              child: Image.asset(
                'assets/runner.png',
                scale: 0.7,
              ),
            )
          ],
        ),
      ),
    );
  }
}
