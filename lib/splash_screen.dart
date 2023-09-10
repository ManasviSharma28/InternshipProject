import 'dart:async';

import 'package:flutter/material.dart';
import 'package:machanic_bhai/screen_first.dart';

class splash_screen extends StatefulWidget {
  const splash_screen({super.key});

  @override
  State<splash_screen> createState() => _splash_screenState();
}

class _splash_screenState extends State<splash_screen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 4), () {
      Navigator.pushReplacement(context as BuildContext,
          MaterialPageRoute(builder: (context) => logIn()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment(0.9, 0.5),
                colors: [
              Colors.white,
              Colors.lightBlue,
            ])),
        child: Center(child: Image.asset("lib/assets/images/logo1.png")),
      ),
    );
  }
}
