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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Row(),
            Column(),
            RaisedButton(onPressed: (){},color: Colors.red,child: Text("Button 1"),),
            RaisedButton(onPressed: (){},color: Colors.red,child: Text("Button 2"),),
            RaisedButton(onPressed: (){},color: Colors.red,child: Text("Button 3"),)
          ],
        )
      ),
      floatingActionButton: FloatingActionButton(
          child: Text("Click"), backgroundColor: Colors.green, onPressed: null),
    );
  }
}
