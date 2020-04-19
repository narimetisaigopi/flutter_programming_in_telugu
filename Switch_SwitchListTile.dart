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
  bool status = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Switch(
                value: status,
                onChanged: (val) {
                  print("switch status $val");
                  setState(() {
                    status = val;
                  });
                }),
            SwitchListTile(
                value: status,
                title: Text("Switch"),
                subtitle: Text("Status $status"),
                onChanged: (val) {
                  print("switch status $val");
                  setState(() {
                    status = val;
                  });
                })
          ],
        ),
      ),
    );
  }
}
