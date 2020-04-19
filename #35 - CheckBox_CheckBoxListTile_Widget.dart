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

  bool isChecked = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Checkbox(value: isChecked, onChanged: (val){
            print("check $val");
            setState(() {
              isChecked = val;
            });
          }),

          CheckboxListTile(value: isChecked, 
          title: Text("Accept Terms and Condition"),
          onChanged: (val){
            print("check $val");
            setState(() {
              isChecked = val;
            });
          })
        ],
      ),
    );
  }
}
