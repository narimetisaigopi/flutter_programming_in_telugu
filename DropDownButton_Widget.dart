import 'package:flutter/material.dart';

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

class MyFirstPage extends StatefulWidget {
  @override
  _MyFirstPageState createState() => _MyFirstPageState();
}

class _MyFirstPageState extends State<MyFirstPage> {
  var countiresList = ["Select Country","India", "China", "Srilanka"];
  var selectedItem = "Select Country";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Center(
            child: DropdownButton(
              value: selectedItem,
                items: countiresList.map((item) {
                  return DropdownMenuItem(
                    child: Text(item),
                    value: item,
                  );
                }).toList(),
                onChanged: (item){
                  print("selected $item");
                  setState(() {
                    selectedItem = item;
                  });
                }),
          )
        ],
      ),
    );
  }
}
