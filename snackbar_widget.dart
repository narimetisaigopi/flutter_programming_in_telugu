import 'package:flutter/material.dart';

class MyFirstPage extends StatelessWidget {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(title: Text('First Screen')),
      body: Container(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        tooltip: 'Add to favourites',
        onPressed: () {
          var snackbar = SnackBar(content: Text("Added to favouries list"),
          backgroundColor: Colors.green,
          action: SnackBarAction(label: "Undo",
          textColor: Colors.white, 
          onPressed: (){
            print("Undo favourite action");
          }),);
          //Scaffold.of(context).showSnackBar(snackbar);
          _scaffoldKey.currentState.showSnackBar(snackbar);
        },
        child: Icon(Icons.favorite),
      ),
    );
  }
}
