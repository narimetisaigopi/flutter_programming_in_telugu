import 'package:flutter/material.dart';

class MyFirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('First Screen')),
      body: Container(
        alignment: Alignment.center,
        color: Colors.green,
        height: 200,
        width: 200,
        child: Text("Boring!!!",style: TextStyle(backgroundColor: Colors.white,fontSize: 30),),
        margin: EdgeInsets.fromLTRB(8, 8, 8, 8),
        padding: EdgeInsets.all(55.0),
      )
    );
  }

  
}
