import 'dart:async';

import 'package:flutter/material.dart';
import 'package:v/screens/home_screan.dart';

import 'bottom_navigation_bar.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                    MyNavigationBar()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(child: Image.network('https://static.javatpoint.com/tutorial/flutter/images/flutter-bottom-navigation-bar.png'),),
    );
  }
}
