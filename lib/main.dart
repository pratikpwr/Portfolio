import 'package:flutter/material.dart';
import 'package:portfolio/views/screens/profile_screen.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PortFolio',
      theme: ThemeData(
        brightness: Brightness.light,
        scaffoldBackgroundColor: Colors.white,
        fontFamily: "GoogleSansRegular",
      ),
      debugShowCheckedModeBanner: false,
      home: ProfileScreen(),
    );
  }
}
