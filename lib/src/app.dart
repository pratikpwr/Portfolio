import 'dart:async';

import 'package:Portfolio1/src/ui/colors/palette.dart';
import 'package:flutter/material.dart';

import 'features/profile/screens/profile_screen.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pratik Pawar PortFolio',
      theme: ThemeData(
        // brightness: Brightness.dark,
        // scaffoldBackgroundColor: Palette.canvasColor,
        // primaryColor: Palette.primaryColor,
        fontFamily: "GoogleSansRegular",
      ),
      debugShowCheckedModeBanner: false,
      home: PreLoader(),
    );
  }
}

class PreLoader extends StatefulWidget {
  @override
  _PreLoaderState createState() => _PreLoaderState();
}

class _PreLoaderState extends State<PreLoader> {
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      setState(() {
        isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ProfileScreen(),
          if (isLoading)
            Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                color: Palette.canvasColor,
                child: Center(
                  child: CircularProgressIndicator(
                    valueColor:
                        AlwaysStoppedAnimation<Color>(Palette.primaryColor),
                  ),
                )),
        ],
      ),
    );
  }
}
