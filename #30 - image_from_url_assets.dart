import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My App",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Programming తెలుగులో"),
        ),
        // body: Image.asset(
        //   "images/flutter_bg.png",
        //   width: 100,
        //   height: 100), 
        body: Image.network("https://miro.medium.com/max/700/1*TkNd1PwwwdBi9Z3kdG5Hng.png"),
    ));
  }
}
