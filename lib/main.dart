import 'package:flutter/material.dart';
// import 'login.dart';
// import 'home.dart';
import 'onboarding.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quản lý toà nhà',
      home: new OnboardingScreen(),
      // home: new Login(),
      // home: new Home(),
    );
  }
}
