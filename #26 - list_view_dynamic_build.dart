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

  List<String> generateListItems(){
    //List<String> list = List.generate(1000, (counter) => "Item $counter");

    List<String> list = new List();
    list.add("India");
    list.add("PA");

    return list;
  }

  Widget createListView(){
    var listItems = generateListItems();
    var listview = ListView.builder(itemBuilder: (context,index){
      return ListTile(
        leading: Text('$index'),
        title: Text(listItems[index]),
        onTap: (){
          print(listItems[index]);
        },
      );
    });

    return listview;
  }
}
