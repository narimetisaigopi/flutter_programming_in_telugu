import 'package:flutter/material.dart';

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
        appBar: AppBar(
          title: Text("Programming తెలుగులో"),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.share), onPressed: () {}),
            IconButton(icon: Icon(Icons.favorite), onPressed: () {}),
            PopupMenuButton(
              onSelected: (item){
                print("$item");
                if(item == "Settings"){
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MySecondPage()));
                }
              },
                itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                      PopupMenuItem(
                        child: Text("Settings"),
                        value: "Settings",
                      ),
                      PopupMenuItem(
                        child: Text("Logout"),
                        value: "Logout",
                      ),
                    ])
          ],
        ),
        body: Scaffold(
          body: Container(
            alignment: Alignment.center,
            child: RaisedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MySecondPage()));
              },
              child: Text("Go To Second Screen"),
            ),
          ),
        ));
  }
}

class MySecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Second Page")),
        body: Scaffold(
          body: Container(
            child: Center(child: Text("Hello from second page")),
          ),
        ));
  }
}
