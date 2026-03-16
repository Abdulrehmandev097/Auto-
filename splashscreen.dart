import 'package:auto/onboradscreen1.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 04), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const Onboradscreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("auto.png"),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
