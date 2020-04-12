import 'package:flutter/material.dart';
import 'screens/my_page2.dart';

void main(){
  runApp(
    MaterialApp(
      title: "My First Page",
      color: Colors.red,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
        brightness: Brightness.light,
        // fontFamily: "Ind"
      ),
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('First Screen'),
          leading: Icon(Icons.home),
          centerTitle: true,
          backgroundColor: Colors.green,
        ),

        body: Center(child: new MyPage()),
    
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.favorite),
          backgroundColor: Colors.green,
          onPressed: null),
      ),
      
    )
  );  
}

class MyPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Text("I am stateless widget. i don't change never.");
  }
}
