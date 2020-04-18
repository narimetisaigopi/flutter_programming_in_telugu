import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  
  String text;

  // SecondScreen(String text){
  //   this.text = text;
  // }

  SecondScreen(this.text);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Second Screen"),),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            Text("Message from first screen --> $text"),
            SizedBox(height: 50),
            RaisedButton(onPressed: (){
              Navigator.pop(context);
            },
            child: Text("Go To First Screen"),),
          ],
        ),
      ),
    );
  }
}
