import 'dart:async';

import 'package:flutter/material.dart';

class MySplashScreen extends StatefulWidget {
  const MySplashScreen({Key? key}) : super(key: key);

  @override
  State<MySplashScreen> createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen> {
  // StartTime(){
  //   Timer(const Duration(seconds: 3), () async {
  //     if (await fAuth.currentUser =! null) {
  //     currentFireBaseUser = fAuth.current;
  //     Navigator.push(context, MaterialPageRoute(builder: (e) => const SignIn()));
  //     }
  //   });
  // }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
