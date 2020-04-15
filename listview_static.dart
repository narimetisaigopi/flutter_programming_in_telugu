import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My App",
      home: Scaffold(
        appBar: AppBar(title: Text("List Widget"),),
        body: createListView()
      ),
    );
  }

  Widget createListView(){

    var listView = ListView(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.phone),
          title: Text("Mobile Phone"),
          subtitle: Text("This is mobile phone"),
          trailing: Icon(Icons.attach_money),
          onTap: (){
            print("mobile phone item clicked");
          },
        ),
        ListTile(
          leading: Icon(Icons.laptop_chromebook),
          title: Text("New Chrome Book"),
        ),

        Text("Hello i am here"),

        Container(color: Colors.green,height: 50,)
      ],
    );

    return listView;
  }
}



