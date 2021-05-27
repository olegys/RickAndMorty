import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_app/resources/images.dart';
import 'package:flutter_app/screens/main_screen/main_screen.dart';

class SplashScreen extends StatefulWidget {
  static const String routeName = '/';

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final Duration _splashDelay = Duration(seconds: 1);

  @override
  void initState() {
    super.initState();

    Timer(
      _splashDelay,
      () => Navigator.pushReplacementNamed(
        context,
        MainScreen.routeName,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset(
        Images.splash,
        width: double.infinity,
        fit: BoxFit.cover,
      ),
    );
  }
}
