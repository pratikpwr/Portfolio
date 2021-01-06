import 'package:flutter/material.dart';
import 'package:portfolio/palette.dart';
import 'package:portfolio/views/screens/profile_screen.dart';

void main() {
  return runApp(MyApp());
}

// flutter pub global run peanut:peanut
// git push origin --set-upstream gh-pages

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PortFolio',
      theme: ThemeData(
        // brightness: Brightness.dark,
        scaffoldBackgroundColor: Palette.canvasColor,
        primaryColor: Palette.primaryColor,
        fontFamily: "GoogleSansRegular",
      ),
      debugShowCheckedModeBanner: false,
      home: ProfileScreen(),
    );
  }
}
