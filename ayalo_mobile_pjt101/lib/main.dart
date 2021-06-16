import 'package:ayalo_mobile_pjt101/Screens/login_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(AyaloMain());
}

class AyaloMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ayalo',
      theme: ThemeData(
        primaryColor: Color(0xff53b175),
      ),
      home: LoginScreen(),
    );
  }
}
