import 'package:flutter/material.dart';

class MyDrawerLayout extends StatefulWidget {
  @override
  _MyDrawerLayoutState createState() => _MyDrawerLayoutState();
}

class _MyDrawerLayoutState extends State<MyDrawerLayout> {


  var list = [
    Center(child: Text("Home"),),
    Center(child: Text("Sign In"),),
    Center(child: Text("Sign Out"),),
  ];

  var curentItemSelected = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer Layout"),
      ),
      body: list[curentItemSelected],
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Container(
                color: Colors.blue,
                alignment: Alignment.center,
                child: Text(
                  "Programming తెలుగులో",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24
                  ),
                ),
              ),
              padding: EdgeInsets.zero,
              margin: EdgeInsets.zero,
            ),
            ListTile(
              title: Text("Home"),
              leading: Icon(Icons.home),
              onTap: (){
                Navigator.pop(context);
                setState(() {
                  curentItemSelected = 0;
                });
              },
            ),
            ListTile(
              title: Text("Sign In"),
              leading: Icon(Icons.access_time),
              onTap: (){
                Navigator.pop(context);
                setState(() {
                  curentItemSelected = 1;
                });
              },
            ),
            ListTile(
              title: Text("Sign Out"),
              leading: Icon(Icons.local_activity),
              onTap: (){
                Navigator.pop(context);
                setState(() {
                  curentItemSelected = 2;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
