import 'package:flutter/material.dart';

class MyFirstPage extends StatelessWidget {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(title: Text('First Screen')),
      body: RaisedButton(
        onPressed: () {
          createAlertDialog(context);
        },
        child: Text("Show Alert Dialog"),
      ),
    );
  }

  createAlertDialog(BuildContext context) {
    var alertDialog = AlertDialog(
      backgroundColor: Colors.green,
      elevation: 10.0,
      title: Text("Congrats"),
      content: Text("You have won iphone 7 plus"),
      actions: <Widget>[
        GestureDetector(
          child: Text("Close"),
          onTap: (){
            Navigator.pop(context);
          },
        )
      ],
    );

    showDialog(context: context,
    builder: (BuildContext context){
      return alertDialog;
    });
  }
}
