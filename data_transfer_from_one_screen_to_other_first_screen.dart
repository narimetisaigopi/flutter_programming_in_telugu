import 'package:flutter/material.dart';
import 'package:hello_world/screens/second_screen.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("First Screen"),),
      body: Container(
        alignment: Alignment.center,
        child: RaisedButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => SecondScreen("Hello Good Morning") ));
        },
        child: Text("Go To Second Screen"),),
      ),
    );
  }
}
