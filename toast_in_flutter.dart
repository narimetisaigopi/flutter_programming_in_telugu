import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

// pub.dev/packages/fluttertoast
// add this below line to your dependencies (pubspec.yaml) file
// fluttertoast: ^4.0.0

class MyFirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('First Screen')),
      body: RaisedButton(
        onPressed: () {
          Fluttertoast.showToast(msg: "I am toast message in flutter");
        },
        child: Text("Show Toast"),
      ),
    );
  }

  
}
