import 'dart:async';

import 'package:chat2x_new/home_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 10), () {
      Navigator.pushAndRemoveUntil(context,
          MaterialPageRoute(builder: (c) => HomeScreen()), (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Image.network(
            "https://live.staticflickr.com/5745/23715253085_4a3d1ea12d_w.jpg"),
      ),
    );
  }
}

// main.dart file
// import 'package:chat2x_new/home_screen.dart';
// import 'package:chat2x_new/splash_screens.dart';
// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: "Chat2X App Building",
// mi splash screen file ni ikkada add chayandi as home
//       home: SplashScreen(),
//     );
//   }
// }
