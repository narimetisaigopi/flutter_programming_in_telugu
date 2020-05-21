import 'package:flutter/material.dart';

class MyExpandableListView extends StatelessWidget {
   List<String> months = ["Jan", "Feb", "Mar", "Apr", "May", "June", "July", "Aug", "Sep", "Oct", "Nov", "Dec"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Expandable Listview"),),
      body: ListView.builder(
        itemCount: months.length,
        itemBuilder: (context,index){
          return ExpansionTile(title: Text(months[index]),
          children: <Widget>[
            
            Text("About this month"),
            Text(months[index]),
          ],);
      }),
    );
  }
}
