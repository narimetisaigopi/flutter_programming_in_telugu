import 'package:flutter/material.dart';

class MyFirstPage extends StatelessWidget {

  TextEditingController editingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( title: Text('First Screen')),
      body: Container(
        margin: EdgeInsets.all(16),
        child: Column(
          children: <Widget>[
            TextField(
              controller: editingController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: 'Enter Email',
                border: OutlineInputBorder(),
                suffixIcon: Icon(Icons.mail)
              ),
            ),

            RaisedButton(onPressed: (){
              print(''+editingController.text);
            }
            ,child: Text("Get Data"),)
          ],
        ),
      )
      
    );
  }
}
