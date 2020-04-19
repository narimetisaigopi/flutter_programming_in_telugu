import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyFirstPage(),
    );
  }
}

/*
int
double
string
bool
**/

class MyFirstPage extends StatelessWidget {

  TextEditingController _editingController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    getDataFromSP();
    return Scaffold(
      appBar: AppBar(title: Text("SharedPreference"),),
      body: Column(
        children: <Widget>[
          TextField(
            controller: _editingController,
            decoration: InputDecoration(
              hintText: "Enter User Name"
            ),
          ),

          RaisedButton(onPressed: () async{
            saveDatainSP(_editingController.text);
          },child: Text("Fetch and save Data"),)
        ],
      ),
    );
  }

  void saveDatainSP(String name) async{
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString("name", name);
    print("named saved in SP");

    //sharedPreferences.clear();
    //sharedPreferences.containsKey("username");
    sharedPreferences.reload();
  }

  getDataFromSP() async{
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    String username = sharedPreferences.getString("name") ?? "User Name";
    _editingController.text = username;
  }
}
