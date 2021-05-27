import 'package:flutter/material.dart';
import 'package:dicee/pages/dicee.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  final int splashDuration = 1;

  @override
  void initState() {
    super.initState();
    loadWidget();
  }

  loadWidget() async {
    return Timer(
      Duration(seconds: splashDuration),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => DiceScreen(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Center(child: Image.asset('assets/images/logo/logo.png')),
    );
  }
}
