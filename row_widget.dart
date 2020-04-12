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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Icon(Icons.done,size: 40,),
            Icon(Icons.favorite,size: 40,),
            Icon(Icons.done_all,size: 40,),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Text("Click"), backgroundColor: Colors.green, onPressed: null),
    );
  }
}
