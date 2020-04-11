import 'package:flutter/material.dart';

// widgetsApp
// MaterialApp
void main(){
  runApp(
    MaterialApp(
      title: "My First Page",
      color: Colors.red,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
        brightness: Brightness.light
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('First Screen'),
          centerTitle: true,
          backgroundColor: Colors.green,
        ),

        floatingActionButton: FloatingActionButton(
          child: Text("Click"),
          onPressed: null),
      ),
      
    )
  );
    
}
