import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyPhotosListView(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class PhotoModel {
  String title;
  String thumbnailUrl;

  PhotoModel({this.title, this.thumbnailUrl});

  factory PhotoModel.fromJson(Map<String, dynamic> map) {
    return PhotoModel(title: map["title"], thumbnailUrl: map["thumbnailUrl"]);
  }
}


class MyPhotosListView extends StatefulWidget {
  @override
  _MyPhotosListViewState createState() => _MyPhotosListViewState();
}

class _MyPhotosListViewState extends State<MyPhotosListView> {

  List<PhotoModel> _photosModelList = List();

  bool isLoaded = false;

  @override
  void initState() {
    super.initState();
    fetchPhotos(); 
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Photos"),),
      body: !isLoaded ? Center(child: CircularProgressIndicator()) : ListView.builder(
        itemCount: _photosModelList.length,
        itemBuilder: (BuildContext context,int index){
          return Card(
                      child: ListTile(
              title: Text("${_photosModelList[index].title}"),
              leading: Image.network("${_photosModelList[index].thumbnailUrl}"),
            ),
          );

      }),
    );
  }

  void fetchPhotos() async{
    var data = await http.get("https://jsonplaceholder.typicode.com/photos");
    var listMap = await json.decode(data.body) as List;
    _photosModelList = listMap.map((item) => PhotoModel.fromJson(item)).toList();
    setState(() {
      isLoaded = true;
    });
  }
}
