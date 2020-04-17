import 'package:flutter/material.dart';

class MyBottomBavitionBar extends StatefulWidget {
  @override
  _MyBottomBavitionBarState createState() => _MyBottomBavitionBarState();
}

class _MyBottomBavitionBarState extends State<MyBottomBavitionBar> {

  int _currentPostiton = 2;

  var list = [
    Center(child: Text("Home")),
    Center(child: Text("Store")),
    Center(child: Text("Camera")),
    Center(child: Text("Wallet")),
    Center(child: Text("History")),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Bottom Navigation Bar")),
      body: list[_currentPostiton],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.red,
        currentIndex: _currentPostiton,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),title: Text("Home")),
          BottomNavigationBarItem(icon: Icon(Icons.store),title: Text("Store")),
          BottomNavigationBarItem(icon: Icon(Icons.camera),title: Text("Camera")),
          BottomNavigationBarItem(icon: Icon(Icons.account_balance_wallet),title: Text("Wallet")),
          BottomNavigationBarItem(icon: Icon(Icons.history),title: Text("History")),
        ],
        onTap: (index){
          setState(() {
            _currentPostiton = index;
          });
        },
      ) ,
    );
  }
}
