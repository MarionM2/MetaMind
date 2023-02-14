import 'dart:async';
import './signup.dart';
import 'package:flutter/material.dart';
import 'main.dart';

class Splash extends StatefulWidget {
  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // only runs once
    super.initState();

    Timer(const Duration(seconds: 20), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Signup()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Image.asset(
        "assets/images/Logo1.png",
      ),
    ));
  }
}
