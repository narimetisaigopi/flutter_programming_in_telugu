import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyFirstPage(),
    );
  }
}

class MyFirstPage extends StatefulWidget {
  @override
  _MyFirstPageState createState() => _MyFirstPageState();
}

class _MyFirstPageState extends State<MyFirstPage> {
  int selectedPosition = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Radio(
              value: 0,
              groupValue: selectedPosition,
              onChanged: (val) {
                print("selected $val");
                setState(() {
                  selectedPosition = val;
                });
              }),
          Radio(
              value: 1,
              groupValue: selectedPosition,
              onChanged: (val) {
                print("selected $val");
                setState(() {
                  selectedPosition = val;
                });
              }),
          RadioListTile(
              value: 3,
              groupValue: selectedPosition,
              title: Text("Male"),
              onChanged: (val) {
                print("selected $val");
                setState(() {
                  selectedPosition = val;
                });
              }),
          RadioListTile(
              value: 4,
              groupValue: selectedPosition,
              title: Text("Female"),
              onChanged: (val) {
                print("selected $val");
                setState(() {
                  selectedPosition = val;
                });
              }),
        ],
      ),
    );
  }
}
