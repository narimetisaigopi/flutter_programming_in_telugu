import 'package:flutter/material.dart';

class MyFirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('First Screen'),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Center(
          child: RaisedButton(
        onPressed: () {
          print("Button Clicked");
        },
        onLongPress: (){
          print("Button Long Pressed");
        },
        color: Colors.red,
        textColor: Colors.white,
        child: Text("Click Me!!",style: TextStyle(fontWeight: FontWeight.bold),),
      )),
      floatingActionButton: FloatingActionButton(
          child: Text("Click"), backgroundColor: Colors.green, onPressed: null),
    );
  }
}
