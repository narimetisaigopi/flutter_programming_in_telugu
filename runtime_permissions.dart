
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class MyExpandableListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Expandable Listview"),
        ),
        body: Container(
          alignment: Alignment.center,
          child: RaisedButton(
            color: Colors.blue,
            textColor: Colors.white,
            onPressed: () {
              checkSMSPermission();
            },
            child: Text("Ask Permission"),
          ),
        ));
  }

  void checkSMSPermission() async {
    var status = await Permission.camera.status;
    if (!status.isGranted) {
      PermissionStatus permissionStatus = await Permission.camera.request();
      print("permissionStatus ${permissionStatus.isGranted}");
    } else {
      // access the resoruce
    }
  }
}
