import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyFirstPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyFirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(title: Text("My WebView"),),
      body: WebView(
        initialUrl: "https://flutter.dev",
        javascriptMode: JavascriptMode.unrestricted,
      ),

      floatingActionButton: FloatingActionButton(onPressed: (){

      },child: Icon(Icons.favorite),),
    );
  }
}


